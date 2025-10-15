#!/usr/bin/env python3
"""
Automatically renumbers SystemVerilog files based on module dependencies.
Ensures files are numbered 1_module.sv through N_module.sv where N is the top-level.
"""

import os
import re
import sys
import argparse
from pathlib import Path

def extract_module_name(filepath):
    """Extracts the module name from a SystemVerilog file."""
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Match: module <name> (
    match = re.search(r'^\s*module\s+(\w+)', content, re.MULTILINE)
    if match:
        return match.group(1)
    return None

def find_module_dependencies(filepath):
    """Finds all module instantiations in a SystemVerilog file."""
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Remove comments
    content = re.sub(r'//.*', '', content)
    content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)
    
    # Match: <module_name> <instance_name> (
    # Also match: <module_name> #(...) <instance_name> (
    dependencies = set()
    patterns = [
        r'^\s*(\w+)\s+(?:#\s*\([^)]*\)\s+)?(\w+)\s*\(',  # Standard instantiation
        r'^\s*(\w+)\s+(\w+)\s*\[',  # Array instantiation
    ]
    
    for pattern in patterns:
        matches = re.finditer(pattern, content, re.MULTILINE)
        for match in matches:
            module_name = match.group(1)
            # Filter out SystemVerilog keywords
            keywords = {'assign', 'always', 'initial', 'generate', 'if', 'else', 'case', 
                       'for', 'while', 'input', 'output', 'inout', 'wire', 'reg', 'logic',
                       'parameter', 'localparam', 'typedef', 'struct', 'enum', 'union'}
            if module_name not in keywords:
                dependencies.add(module_name)
    
    return dependencies

def topological_sort(modules_dict):
    """
    Performs topological sort on modules based on dependencies.
    Returns ordered list of module names (dependency order).
    """
    # Build dependency graph
    in_degree = {mod: 0 for mod in modules_dict.keys()}
    adj_list = {mod: [] for mod in modules_dict.keys()}
    
    for module, deps in modules_dict.items():
        for dep in deps:
            if dep in modules_dict:  # Only count dependencies that are in our design
                adj_list[dep].append(module)
                in_degree[module] += 1
    
    # Find all nodes with no incoming edges (leaf modules)
    queue = [mod for mod in modules_dict.keys() if in_degree[mod] == 0]
    result = []
    
    while queue:
        # Sort to ensure deterministic ordering
        queue.sort()
        node = queue.pop(0)
        result.append(node)
        
        for neighbor in adj_list[node]:
            in_degree[neighbor] -= 1
            if in_degree[neighbor] == 0:
                queue.append(neighbor)
    
    if len(result) != len(modules_dict):
        print("Warning: Circular dependency detected or some modules unreachable!")
        # Add remaining modules
        for mod in modules_dict.keys():
            if mod not in result:
                result.append(mod)
    
    return result

def renumber_files(directory, dry_run=False):
    """
    Renumbers all .sv files in directory according to dependency order.
    """
    dir_path = Path(directory)
    
    if not dir_path.exists():
        print(f"Error: Directory '{directory}' does not exist")
        return
    
    # Find all .sv files
    sv_files = list(dir_path.glob('*.sv'))
    
    if not sv_files:
        print(f"No .sv files found in '{directory}'")
        return
    
    print(f"Found {len(sv_files)} SystemVerilog files")
    
    # Extract module names and dependencies
    file_to_module = {}
    module_to_file = {}
    module_dependencies = {}
    
    for filepath in sv_files:
        module_name = extract_module_name(filepath)
        if module_name:
            file_to_module[filepath] = module_name
            module_to_file[module_name] = filepath
            deps = find_module_dependencies(filepath)
            module_dependencies[module_name] = deps
            print(f"  {filepath.name}: module '{module_name}', depends on {deps}")
        else:
            print(f"  Warning: Could not find module name in {filepath.name}")
    
    # Sort modules by dependency order
    ordered_modules = topological_sort(module_dependencies)
    
    print(f"\nCompilation order:")
    for i, module in enumerate(ordered_modules, 1):
        print(f"  {i}. {module}")
    
    # Rename files
    print(f"\n{'DRY RUN - ' if dry_run else ''}Renaming files:")
    
    # First pass: rename to temporary names to avoid conflicts
    temp_renames = []
    for i, module in enumerate(ordered_modules, 1):
        old_path = module_to_file[module]
        new_name = f"{i}_{module}.sv"
        temp_name = f"_temp_{i}_{module}.sv"
        temp_path = old_path.parent / temp_name
        new_path = old_path.parent / new_name
        
        temp_renames.append((old_path, temp_path, new_path))
        
        if not dry_run:
            old_path.rename(temp_path)
        
        print(f"  {old_path.name} -> {new_name}")
    
    # Second pass: rename from temporary to final names
    if not dry_run:
        for old_path, temp_path, new_path in temp_renames:
            temp_path.rename(new_path)
    
    print(f"\n{'Would rename' if dry_run else 'Renamed'} {len(temp_renames)} files")

def main():
    parser = argparse.ArgumentParser(
        description='Automatically renumber SystemVerilog files based on module dependencies'
    )
    parser.add_argument(
        'directory',
        help='Directory containing .sv files to renumber'
    )
    parser.add_argument(
        '--dry-run',
        action='store_true',
        help='Show what would be done without actually renaming files'
    )
    
    args = parser.parse_args()
    
    renumber_files(args.directory, dry_run=args.dry_run)

if __name__ == '__main__':
    main()