#=========================================================================
# Makefile
#=========================================================================
# Generator : /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/backends/make_backend.py

SHELL=/usr/bin/env bash -euo pipefail

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir
	rm -rf ./$1
	cp -a $2 $1 || true
	chmod -R +w $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir-and-parameterize
	rm -rf ./$1
	cp -a $2 $1 || true
	chmod -R +w $1
	cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define mkdir-and-symlink
	rm -rf ./$1
	mkdir -p $1
	cd $1 && ln -sf ../$2/* . && cd ..
	rm $1/configure.yml && cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst_dir
# $2 -- $dst
# $3 -- $src
# $4 -- $stamp

define symlink
	mkdir -p $1
	cd $1 && ln -sf $3 $2 && touch $4
endef

# $1 -- $stamp

define stamp
	touch $1
endef

define make-subgraph-dir
       mkdir -p $1
       chmod -R +w $1
       cd $1 && mflowgen run --subgraph --design $2
       touch $3
endef

# Default

default: asap-7-adk constraints info rtl testbench cadence-genus-synthesis cadence-innovus-flowsetup verif_post_synth cadence-innovus-init cadence-innovus-power cadence-innovus-place cadence-innovus-cts cadence-innovus-postcts_hold cadence-innovus-route cadence-innovus-postroute cadence-innovus-postroute_hold cadence-innovus-signoff mentor-calibre-gdsmerge synopsys-pt-timing-signoff synopsys-ptpx-genlibdb synopsys-vcs-sim verif_post_layout mentor-calibre-drc mentor-calibre-lvs synopsys-pt-power cadence-innovus-debug-calibre

# ------------------------------------------------------------------------
# asap-7-adk
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 0-asap-7-adk/.prebuilt)","")
0-asap-7-adk/.stamp:
	$(call cpdir-and-parameterize,0-asap-7-adk,../adks/asap7,0-asap-7-adk/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 0-asap-7-adk/.prebuilt)","")

define 0_asap_7_adk_commands_rule
	mkdir -p 0-asap-7-adk/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t asap-7-adk && chmod +x .mflowgen/0-asap-7-adk/mflowgen-run && cp -f .mflowgen/0-asap-7-adk/mflowgen-run 0-asap-7-adk && if [[ -e .mflowgen/0-asap-7-adk/mflowgen-debug ]]; then chmod +x .mflowgen/0-asap-7-adk/mflowgen-debug && cp -f .mflowgen/0-asap-7-adk/mflowgen-debug 0-asap-7-adk; fi && if [[ -e .mflowgen/0-asap-7-adk/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/0-asap-7-adk/mflowgen-check-preconditions.py && cp -f .mflowgen/0-asap-7-adk/mflowgen-check-preconditions.py 0-asap-7-adk; fi && if [[ -e .mflowgen/0-asap-7-adk/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/0-asap-7-adk/mflowgen-check-postconditions.py && cp -f .mflowgen/0-asap-7-adk/mflowgen-check-postconditions.py 0-asap-7-adk; fi && cd 0-asap-7-adk && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 0-asap-7-adk/outputs/*
endef

0-asap-7-adk/.execstamp: 0-asap-7-adk/.stamp
	$(call 0_asap_7_adk_commands_rule)
	touch $@

0-asap-7-adk/outputs/.execstamp.adk: 0-asap-7-adk/.execstamp
	touch $@

endif

# collect outputs

0-asap-7-adk/outputs/.stamp.adk: 0-asap-7-adk/.execstamp 0-asap-7-adk/outputs/.execstamp.adk
	$(call stamp,0-asap-7-adk/outputs/.stamp.adk)

# post-conditions

define 0_asap_7_adk_post_conditions_commands_rule
	cd 0-asap-7-adk && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

0-asap-7-adk/.postconditions.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
	$(call 0_asap_7_adk_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: asap-7-adk

asap-7-adk: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk

.PHONY: 0

0: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk

# debug

# ------------------------------------------------------------------------
# constraints
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 1-constraints/.prebuilt)","")
1-constraints/.stamp:
	$(call cpdir-and-parameterize,1-constraints,../steps/constraints,1-constraints/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 1-constraints/.prebuilt)","")

define 1_constraints_commands_rule
	mkdir -p 1-constraints/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t constraints && chmod +x .mflowgen/1-constraints/mflowgen-run && cp -f .mflowgen/1-constraints/mflowgen-run 1-constraints && if [[ -e .mflowgen/1-constraints/mflowgen-debug ]]; then chmod +x .mflowgen/1-constraints/mflowgen-debug && cp -f .mflowgen/1-constraints/mflowgen-debug 1-constraints; fi && if [[ -e .mflowgen/1-constraints/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/1-constraints/mflowgen-check-preconditions.py && cp -f .mflowgen/1-constraints/mflowgen-check-preconditions.py 1-constraints; fi && if [[ -e .mflowgen/1-constraints/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/1-constraints/mflowgen-check-postconditions.py && cp -f .mflowgen/1-constraints/mflowgen-check-postconditions.py 1-constraints; fi && cd 1-constraints && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 1-constraints/outputs/*
endef

1-constraints/.execstamp: 1-constraints/.stamp
	$(call 1_constraints_commands_rule)
	touch $@

1-constraints/outputs/.execstamp.constraints.tcl: 1-constraints/.execstamp
	touch $@

endif

# collect outputs

1-constraints/outputs/.stamp.constraints.tcl: 1-constraints/.execstamp 1-constraints/outputs/.execstamp.constraints.tcl
	$(call stamp,1-constraints/outputs/.stamp.constraints.tcl)

# post-conditions

define 1_constraints_post_conditions_commands_rule
	cd 1-constraints && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

1-constraints/.postconditions.stamp: 1-constraints/.execstamp 1-constraints/outputs/.execstamp.constraints.tcl 1-constraints/outputs/.stamp.constraints.tcl
	$(call 1_constraints_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: constraints

constraints: 1-constraints/.execstamp 1-constraints/.postconditions.stamp 1-constraints/outputs/.execstamp.constraints.tcl 1-constraints/outputs/.stamp.constraints.tcl

.PHONY: 1

1: 1-constraints/.execstamp 1-constraints/.postconditions.stamp 1-constraints/outputs/.execstamp.constraints.tcl 1-constraints/outputs/.stamp.constraints.tcl

# debug

# ------------------------------------------------------------------------
# info
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 2-info/.prebuilt)","")
2-info/.stamp:
	$(call cpdir-and-parameterize,2-info,../steps/info,2-info/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 2-info/.prebuilt)","")

define 2_info_commands_rule
	mkdir -p 2-info/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && chmod +x .mflowgen/2-info/mflowgen-run && cp -f .mflowgen/2-info/mflowgen-run 2-info && if [[ -e .mflowgen/2-info/mflowgen-debug ]]; then chmod +x .mflowgen/2-info/mflowgen-debug && cp -f .mflowgen/2-info/mflowgen-debug 2-info; fi && if [[ -e .mflowgen/2-info/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/2-info/mflowgen-check-preconditions.py && cp -f .mflowgen/2-info/mflowgen-check-preconditions.py 2-info; fi && if [[ -e .mflowgen/2-info/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/2-info/mflowgen-check-postconditions.py && cp -f .mflowgen/2-info/mflowgen-check-postconditions.py 2-info; fi && cd 2-info && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 2-info/outputs/*
endef

2-info/.execstamp: 2-info/.stamp
	$(call 2_info_commands_rule)

2-info/.execstamp.execute-phony: 2-info/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 2_info_post_conditions_commands_rule
	cd 2-info && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

2-info/.postconditions.stamp: 2-info/.execstamp 2-info/.execstamp.execute-phony
	$(call 2_info_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: info

info: 2-info/.execstamp 2-info/.execstamp.execute-phony 2-info/.postconditions.stamp

.PHONY: 2

2: 2-info/.execstamp 2-info/.execstamp.execute-phony 2-info/.postconditions.stamp

# debug

# ------------------------------------------------------------------------
# rtl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 3-rtl/.prebuilt)","")
3-rtl/.stamp:
	$(call cpdir-and-parameterize,3-rtl,matrix_mult_2x2x1/rtl,3-rtl/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 3-rtl/.prebuilt)","")

define 3_rtl_commands_rule
	mkdir -p 3-rtl/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t rtl && chmod +x .mflowgen/3-rtl/mflowgen-run && cp -f .mflowgen/3-rtl/mflowgen-run 3-rtl && if [[ -e .mflowgen/3-rtl/mflowgen-debug ]]; then chmod +x .mflowgen/3-rtl/mflowgen-debug && cp -f .mflowgen/3-rtl/mflowgen-debug 3-rtl; fi && if [[ -e .mflowgen/3-rtl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/3-rtl/mflowgen-check-preconditions.py && cp -f .mflowgen/3-rtl/mflowgen-check-preconditions.py 3-rtl; fi && if [[ -e .mflowgen/3-rtl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/3-rtl/mflowgen-check-postconditions.py && cp -f .mflowgen/3-rtl/mflowgen-check-postconditions.py 3-rtl; fi && cd 3-rtl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 3-rtl/outputs/*
endef

3-rtl/.execstamp: 3-rtl/.stamp
	$(call 3_rtl_commands_rule)
	touch $@

3-rtl/outputs/.execstamp.design.sv: 3-rtl/.execstamp
	touch $@

endif

# collect outputs

3-rtl/outputs/.stamp.design.sv: 3-rtl/.execstamp 3-rtl/outputs/.execstamp.design.sv
	$(call stamp,3-rtl/outputs/.stamp.design.sv)

# post-conditions

define 3_rtl_post_conditions_commands_rule
	cd 3-rtl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

3-rtl/.postconditions.stamp: 3-rtl/.execstamp 3-rtl/outputs/.execstamp.design.sv 3-rtl/outputs/.stamp.design.sv
	$(call 3_rtl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: rtl

rtl: 3-rtl/.execstamp 3-rtl/.postconditions.stamp 3-rtl/outputs/.execstamp.design.sv 3-rtl/outputs/.stamp.design.sv

.PHONY: 3

3: 3-rtl/.execstamp 3-rtl/.postconditions.stamp 3-rtl/outputs/.execstamp.design.sv 3-rtl/outputs/.stamp.design.sv

# debug

# ------------------------------------------------------------------------
# testbench
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 4-testbench/.prebuilt)","")
4-testbench/.stamp:
	$(call cpdir-and-parameterize,4-testbench,matrix_mult_2x2x1/testbench,4-testbench/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 4-testbench/.prebuilt)","")

define 4_testbench_commands_rule
	mkdir -p 4-testbench/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t testbench && chmod +x .mflowgen/4-testbench/mflowgen-run && cp -f .mflowgen/4-testbench/mflowgen-run 4-testbench && if [[ -e .mflowgen/4-testbench/mflowgen-debug ]]; then chmod +x .mflowgen/4-testbench/mflowgen-debug && cp -f .mflowgen/4-testbench/mflowgen-debug 4-testbench; fi && if [[ -e .mflowgen/4-testbench/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/4-testbench/mflowgen-check-preconditions.py && cp -f .mflowgen/4-testbench/mflowgen-check-preconditions.py 4-testbench; fi && if [[ -e .mflowgen/4-testbench/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/4-testbench/mflowgen-check-postconditions.py && cp -f .mflowgen/4-testbench/mflowgen-check-postconditions.py 4-testbench; fi && cd 4-testbench && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 4-testbench/outputs/*
endef

4-testbench/.execstamp: 4-testbench/.stamp
	$(call 4_testbench_commands_rule)
	touch $@

4-testbench/outputs/.execstamp.testbench.sv: 4-testbench/.execstamp
	touch $@
4-testbench/outputs/.execstamp.test_vectors.txt: 4-testbench/.execstamp
	touch $@
4-testbench/outputs/.execstamp.design.args: 4-testbench/.execstamp
	touch $@

endif

# collect outputs

4-testbench/outputs/.stamp.testbench.sv: 4-testbench/.execstamp 4-testbench/outputs/.execstamp.design.args 4-testbench/outputs/.execstamp.test_vectors.txt 4-testbench/outputs/.execstamp.testbench.sv
	$(call stamp,4-testbench/outputs/.stamp.testbench.sv)

4-testbench/outputs/.stamp.test_vectors.txt: 4-testbench/.execstamp 4-testbench/outputs/.execstamp.design.args 4-testbench/outputs/.execstamp.test_vectors.txt 4-testbench/outputs/.execstamp.testbench.sv
	$(call stamp,4-testbench/outputs/.stamp.test_vectors.txt)

4-testbench/outputs/.stamp.design.args: 4-testbench/.execstamp 4-testbench/outputs/.execstamp.design.args 4-testbench/outputs/.execstamp.test_vectors.txt 4-testbench/outputs/.execstamp.testbench.sv
	$(call stamp,4-testbench/outputs/.stamp.design.args)

# post-conditions

define 4_testbench_post_conditions_commands_rule
	cd 4-testbench && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

4-testbench/.postconditions.stamp: 4-testbench/.execstamp 4-testbench/outputs/.execstamp.design.args 4-testbench/outputs/.execstamp.test_vectors.txt 4-testbench/outputs/.execstamp.testbench.sv 4-testbench/outputs/.stamp.design.args 4-testbench/outputs/.stamp.test_vectors.txt 4-testbench/outputs/.stamp.testbench.sv
	$(call 4_testbench_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: testbench

testbench: 4-testbench/.execstamp 4-testbench/.postconditions.stamp 4-testbench/outputs/.execstamp.design.args 4-testbench/outputs/.execstamp.test_vectors.txt 4-testbench/outputs/.execstamp.testbench.sv 4-testbench/outputs/.stamp.design.args 4-testbench/outputs/.stamp.test_vectors.txt 4-testbench/outputs/.stamp.testbench.sv

.PHONY: 4

4: 4-testbench/.execstamp 4-testbench/.postconditions.stamp 4-testbench/outputs/.execstamp.design.args 4-testbench/outputs/.execstamp.test_vectors.txt 4-testbench/outputs/.execstamp.testbench.sv 4-testbench/outputs/.stamp.design.args 4-testbench/outputs/.stamp.test_vectors.txt 4-testbench/outputs/.stamp.testbench.sv

# debug

# ------------------------------------------------------------------------
# cadence-genus-synthesis
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 5-cadence-genus-synthesis/.prebuilt)","")
5-cadence-genus-synthesis/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
5-cadence-genus-synthesis/.stamp: 1-constraints/.execstamp 1-constraints/.postconditions.stamp 1-constraints/outputs/.execstamp.constraints.tcl 1-constraints/outputs/.stamp.constraints.tcl
5-cadence-genus-synthesis/.stamp: 3-rtl/.execstamp 3-rtl/.postconditions.stamp 3-rtl/outputs/.execstamp.design.sv 3-rtl/outputs/.stamp.design.sv
5-cadence-genus-synthesis/.stamp:
	$(call cpdir-and-parameterize,5-cadence-genus-synthesis,../steps/cadence-genus-synthesis,5-cadence-genus-synthesis/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 5-cadence-genus-synthesis/.prebuilt)","")
5-cadence-genus-synthesis/inputs/.stamp.adk: 5-cadence-genus-synthesis/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,5-cadence-genus-synthesis/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 5-cadence-genus-synthesis/.prebuilt)","")
5-cadence-genus-synthesis/inputs/.stamp.constraints.tcl: 5-cadence-genus-synthesis/.stamp 1-constraints/outputs/.stamp.constraints.tcl
	$(call symlink,5-cadence-genus-synthesis/inputs,constraints.tcl,../../1-constraints/outputs/constraints.tcl,.stamp.constraints.tcl)
endif

ifeq ("$(wildcard 5-cadence-genus-synthesis/.prebuilt)","")
5-cadence-genus-synthesis/inputs/.stamp.design.sv: 5-cadence-genus-synthesis/.stamp 3-rtl/outputs/.stamp.design.sv
	$(call symlink,5-cadence-genus-synthesis/inputs,design.sv,../../3-rtl/outputs/design.sv,.stamp.design.sv)
endif

# execute

ifeq ("$(wildcard 5-cadence-genus-synthesis/.prebuilt)","")

define 5_cadence_genus_synthesis_commands_rule
	mkdir -p 5-cadence-genus-synthesis/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-genus-synthesis && chmod +x .mflowgen/5-cadence-genus-synthesis/mflowgen-run && cp -f .mflowgen/5-cadence-genus-synthesis/mflowgen-run 5-cadence-genus-synthesis && if [[ -e .mflowgen/5-cadence-genus-synthesis/mflowgen-debug ]]; then chmod +x .mflowgen/5-cadence-genus-synthesis/mflowgen-debug && cp -f .mflowgen/5-cadence-genus-synthesis/mflowgen-debug 5-cadence-genus-synthesis; fi && if [[ -e .mflowgen/5-cadence-genus-synthesis/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/5-cadence-genus-synthesis/mflowgen-check-preconditions.py && cp -f .mflowgen/5-cadence-genus-synthesis/mflowgen-check-preconditions.py 5-cadence-genus-synthesis; fi && if [[ -e .mflowgen/5-cadence-genus-synthesis/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/5-cadence-genus-synthesis/mflowgen-check-postconditions.py && cp -f .mflowgen/5-cadence-genus-synthesis/mflowgen-check-postconditions.py 5-cadence-genus-synthesis; fi && cd 5-cadence-genus-synthesis && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 5-cadence-genus-synthesis/outputs/*
endef

5-cadence-genus-synthesis/.execstamp: 5-cadence-genus-synthesis/.stamp 5-cadence-genus-synthesis/inputs/.stamp.adk 5-cadence-genus-synthesis/inputs/.stamp.constraints.tcl 5-cadence-genus-synthesis/inputs/.stamp.design.sv
	$(call 5_cadence_genus_synthesis_commands_rule)
	touch $@

5-cadence-genus-synthesis/outputs/.execstamp.design.v: 5-cadence-genus-synthesis/.execstamp
	touch $@
5-cadence-genus-synthesis/outputs/.execstamp.design.sdc: 5-cadence-genus-synthesis/.execstamp
	touch $@
5-cadence-genus-synthesis/outputs/.execstamp.design.sdf: 5-cadence-genus-synthesis/.execstamp
	touch $@
5-cadence-genus-synthesis/outputs/.execstamp.design.spef: 5-cadence-genus-synthesis/.execstamp
	touch $@
5-cadence-genus-synthesis/outputs/.execstamp.design.namemap: 5-cadence-genus-synthesis/.execstamp
	touch $@

endif

# collect outputs

5-cadence-genus-synthesis/outputs/.stamp.design.v: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v
	$(call stamp,5-cadence-genus-synthesis/outputs/.stamp.design.v)

5-cadence-genus-synthesis/outputs/.stamp.design.sdc: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v
	$(call stamp,5-cadence-genus-synthesis/outputs/.stamp.design.sdc)

5-cadence-genus-synthesis/outputs/.stamp.design.sdf: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v
	$(call stamp,5-cadence-genus-synthesis/outputs/.stamp.design.sdf)

5-cadence-genus-synthesis/outputs/.stamp.design.spef: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v
	$(call stamp,5-cadence-genus-synthesis/outputs/.stamp.design.spef)

5-cadence-genus-synthesis/outputs/.stamp.design.namemap: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v
	$(call stamp,5-cadence-genus-synthesis/outputs/.stamp.design.namemap)

# post-conditions

define 5_cadence_genus_synthesis_post_conditions_commands_rule
	cd 5-cadence-genus-synthesis && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

5-cadence-genus-synthesis/.postconditions.stamp: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v
	$(call 5_cadence_genus_synthesis_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-genus-synthesis

cadence-genus-synthesis: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v

.PHONY: 5

5: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v

# debug

define 5_debug_rule
	cd 5-cadence-genus-synthesis && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-genus-synthesis: 
	$(call 5_debug_rule)

.PHONY: debug-5

debug-5: debug-cadence-genus-synthesis

# ------------------------------------------------------------------------
# cadence-innovus-flowsetup
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 6-cadence-innovus-flowsetup/.prebuilt)","")
6-cadence-innovus-flowsetup/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
6-cadence-innovus-flowsetup/.stamp: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v
6-cadence-innovus-flowsetup/.stamp:
	$(call cpdir-and-parameterize,6-cadence-innovus-flowsetup,../steps/cadence-innovus-flowsetup,6-cadence-innovus-flowsetup/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 6-cadence-innovus-flowsetup/.prebuilt)","")
6-cadence-innovus-flowsetup/inputs/.stamp.adk: 6-cadence-innovus-flowsetup/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,6-cadence-innovus-flowsetup/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 6-cadence-innovus-flowsetup/.prebuilt)","")
6-cadence-innovus-flowsetup/inputs/.stamp.design.sdc: 6-cadence-innovus-flowsetup/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.sdc
	$(call symlink,6-cadence-innovus-flowsetup/inputs,design.sdc,../../5-cadence-genus-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 6-cadence-innovus-flowsetup/.prebuilt)","")
6-cadence-innovus-flowsetup/inputs/.stamp.design.v: 6-cadence-innovus-flowsetup/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.v
	$(call symlink,6-cadence-innovus-flowsetup/inputs,design.v,../../5-cadence-genus-synthesis/outputs/design.v,.stamp.design.v)
endif

# execute

ifeq ("$(wildcard 6-cadence-innovus-flowsetup/.prebuilt)","")

define 6_cadence_innovus_flowsetup_commands_rule
	mkdir -p 6-cadence-innovus-flowsetup/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && chmod +x .mflowgen/6-cadence-innovus-flowsetup/mflowgen-run && cp -f .mflowgen/6-cadence-innovus-flowsetup/mflowgen-run 6-cadence-innovus-flowsetup && if [[ -e .mflowgen/6-cadence-innovus-flowsetup/mflowgen-debug ]]; then chmod +x .mflowgen/6-cadence-innovus-flowsetup/mflowgen-debug && cp -f .mflowgen/6-cadence-innovus-flowsetup/mflowgen-debug 6-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/6-cadence-innovus-flowsetup/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/6-cadence-innovus-flowsetup/mflowgen-check-preconditions.py && cp -f .mflowgen/6-cadence-innovus-flowsetup/mflowgen-check-preconditions.py 6-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/6-cadence-innovus-flowsetup/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/6-cadence-innovus-flowsetup/mflowgen-check-postconditions.py && cp -f .mflowgen/6-cadence-innovus-flowsetup/mflowgen-check-postconditions.py 6-cadence-innovus-flowsetup; fi && cd 6-cadence-innovus-flowsetup && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 6-cadence-innovus-flowsetup/outputs/*
endef

6-cadence-innovus-flowsetup/.execstamp: 6-cadence-innovus-flowsetup/.stamp 6-cadence-innovus-flowsetup/inputs/.stamp.adk 6-cadence-innovus-flowsetup/inputs/.stamp.design.sdc 6-cadence-innovus-flowsetup/inputs/.stamp.design.v
	$(call 6_cadence_innovus_flowsetup_commands_rule)
	touch $@

6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow: 6-cadence-innovus-flowsetup/.execstamp
	touch $@

endif

# collect outputs

6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow
	$(call stamp,6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow)

# post-conditions

define 6_cadence_innovus_flowsetup_post_conditions_commands_rule
	cd 6-cadence-innovus-flowsetup && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

6-cadence-innovus-flowsetup/.postconditions.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call 6_cadence_innovus_flowsetup_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-flowsetup

cadence-innovus-flowsetup: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

.PHONY: 6

6: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

# debug

# ------------------------------------------------------------------------
# verif_post_synth
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 7-verif_post_synth/.prebuilt)","")
7-verif_post_synth/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
7-verif_post_synth/.stamp: 3-rtl/.execstamp 3-rtl/.postconditions.stamp 3-rtl/outputs/.execstamp.design.sv 3-rtl/outputs/.stamp.design.sv
7-verif_post_synth/.stamp: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v
7-verif_post_synth/.stamp:
	$(call cpdir-and-parameterize,7-verif_post_synth,../steps/synopsys-formality-verification,7-verif_post_synth/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 7-verif_post_synth/.prebuilt)","")
7-verif_post_synth/inputs/.stamp.adk: 7-verif_post_synth/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,7-verif_post_synth/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 7-verif_post_synth/.prebuilt)","")
7-verif_post_synth/inputs/.stamp.design.impl.v: 7-verif_post_synth/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.v
	$(call symlink,7-verif_post_synth/inputs,design.impl.v,../../5-cadence-genus-synthesis/outputs/design.v,.stamp.design.impl.v)
endif

ifeq ("$(wildcard 7-verif_post_synth/.prebuilt)","")
7-verif_post_synth/inputs/.stamp.design.ref.v: 7-verif_post_synth/.stamp 3-rtl/outputs/.stamp.design.sv
	$(call symlink,7-verif_post_synth/inputs,design.ref.v,../../3-rtl/outputs/design.sv,.stamp.design.ref.v)
endif

# execute

ifeq ("$(wildcard 7-verif_post_synth/.prebuilt)","")

define 7_verif_post_synth_commands_rule
	mkdir -p 7-verif_post_synth/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t verif_post_synth && chmod +x .mflowgen/7-verif_post_synth/mflowgen-run && cp -f .mflowgen/7-verif_post_synth/mflowgen-run 7-verif_post_synth && if [[ -e .mflowgen/7-verif_post_synth/mflowgen-debug ]]; then chmod +x .mflowgen/7-verif_post_synth/mflowgen-debug && cp -f .mflowgen/7-verif_post_synth/mflowgen-debug 7-verif_post_synth; fi && if [[ -e .mflowgen/7-verif_post_synth/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/7-verif_post_synth/mflowgen-check-preconditions.py && cp -f .mflowgen/7-verif_post_synth/mflowgen-check-preconditions.py 7-verif_post_synth; fi && if [[ -e .mflowgen/7-verif_post_synth/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/7-verif_post_synth/mflowgen-check-postconditions.py && cp -f .mflowgen/7-verif_post_synth/mflowgen-check-postconditions.py 7-verif_post_synth; fi && cd 7-verif_post_synth && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 7-verif_post_synth/outputs/*
endef

7-verif_post_synth/.execstamp: 7-verif_post_synth/.stamp 7-verif_post_synth/inputs/.stamp.adk 7-verif_post_synth/inputs/.stamp.design.impl.v 7-verif_post_synth/inputs/.stamp.design.ref.v
	$(call 7_verif_post_synth_commands_rule)

7-verif_post_synth/.execstamp.execute-phony: 7-verif_post_synth/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 7_verif_post_synth_post_conditions_commands_rule
	cd 7-verif_post_synth && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

7-verif_post_synth/.postconditions.stamp: 7-verif_post_synth/.execstamp 7-verif_post_synth/.execstamp.execute-phony
	$(call 7_verif_post_synth_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: verif_post_synth

verif_post_synth: 7-verif_post_synth/.execstamp 7-verif_post_synth/.execstamp.execute-phony 7-verif_post_synth/.postconditions.stamp

.PHONY: 7

7: 7-verif_post_synth/.execstamp 7-verif_post_synth/.execstamp.execute-phony 7-verif_post_synth/.postconditions.stamp

# debug

define 7_debug_rule
	cd 7-verif_post_synth && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-verif_post_synth: 
	$(call 7_debug_rule)

.PHONY: debug-7

debug-7: debug-verif_post_synth

# ------------------------------------------------------------------------
# cadence-innovus-init
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 8-cadence-innovus-init/.prebuilt)","")
8-cadence-innovus-init/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
8-cadence-innovus-init/.stamp: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v
8-cadence-innovus-init/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
8-cadence-innovus-init/.stamp:
	$(call cpdir-and-parameterize,8-cadence-innovus-init,../steps/cadence-innovus-init,8-cadence-innovus-init/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 8-cadence-innovus-init/.prebuilt)","")
8-cadence-innovus-init/inputs/.stamp.adk: 8-cadence-innovus-init/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,8-cadence-innovus-init/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 8-cadence-innovus-init/.prebuilt)","")
8-cadence-innovus-init/inputs/.stamp.design.sdc: 8-cadence-innovus-init/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.sdc
	$(call symlink,8-cadence-innovus-init/inputs,design.sdc,../../5-cadence-genus-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 8-cadence-innovus-init/.prebuilt)","")
8-cadence-innovus-init/inputs/.stamp.design.v: 8-cadence-innovus-init/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.v
	$(call symlink,8-cadence-innovus-init/inputs,design.v,../../5-cadence-genus-synthesis/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 8-cadence-innovus-init/.prebuilt)","")
8-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow: 8-cadence-innovus-init/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,8-cadence-innovus-init/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 8-cadence-innovus-init/.prebuilt)","")

define 8_cadence_innovus_init_commands_rule
	mkdir -p 8-cadence-innovus-init/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && chmod +x .mflowgen/8-cadence-innovus-init/mflowgen-run && cp -f .mflowgen/8-cadence-innovus-init/mflowgen-run 8-cadence-innovus-init && if [[ -e .mflowgen/8-cadence-innovus-init/mflowgen-debug ]]; then chmod +x .mflowgen/8-cadence-innovus-init/mflowgen-debug && cp -f .mflowgen/8-cadence-innovus-init/mflowgen-debug 8-cadence-innovus-init; fi && if [[ -e .mflowgen/8-cadence-innovus-init/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/8-cadence-innovus-init/mflowgen-check-preconditions.py && cp -f .mflowgen/8-cadence-innovus-init/mflowgen-check-preconditions.py 8-cadence-innovus-init; fi && if [[ -e .mflowgen/8-cadence-innovus-init/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/8-cadence-innovus-init/mflowgen-check-postconditions.py && cp -f .mflowgen/8-cadence-innovus-init/mflowgen-check-postconditions.py 8-cadence-innovus-init; fi && cd 8-cadence-innovus-init && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 8-cadence-innovus-init/outputs/*
endef

8-cadence-innovus-init/.execstamp: 8-cadence-innovus-init/.stamp 8-cadence-innovus-init/inputs/.stamp.adk 8-cadence-innovus-init/inputs/.stamp.design.sdc 8-cadence-innovus-init/inputs/.stamp.design.v 8-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow
	$(call 8_cadence_innovus_init_commands_rule)
	touch $@

8-cadence-innovus-init/outputs/.execstamp.design.checkpoint: 8-cadence-innovus-init/.execstamp
	touch $@

endif

# collect outputs

8-cadence-innovus-init/outputs/.stamp.design.checkpoint: 8-cadence-innovus-init/.execstamp 8-cadence-innovus-init/outputs/.execstamp.design.checkpoint
	$(call stamp,8-cadence-innovus-init/outputs/.stamp.design.checkpoint)

# post-conditions

define 8_cadence_innovus_init_post_conditions_commands_rule
	cd 8-cadence-innovus-init && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

8-cadence-innovus-init/.postconditions.stamp: 8-cadence-innovus-init/.execstamp 8-cadence-innovus-init/outputs/.execstamp.design.checkpoint 8-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call 8_cadence_innovus_init_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-init

cadence-innovus-init: 8-cadence-innovus-init/.execstamp 8-cadence-innovus-init/.postconditions.stamp 8-cadence-innovus-init/outputs/.execstamp.design.checkpoint 8-cadence-innovus-init/outputs/.stamp.design.checkpoint

.PHONY: 8

8: 8-cadence-innovus-init/.execstamp 8-cadence-innovus-init/.postconditions.stamp 8-cadence-innovus-init/outputs/.execstamp.design.checkpoint 8-cadence-innovus-init/outputs/.stamp.design.checkpoint

# debug

define 8_debug_rule
	cd 8-cadence-innovus-init && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-init: 
	$(call 8_debug_rule)

.PHONY: debug-8

debug-8: debug-cadence-innovus-init

# ------------------------------------------------------------------------
# cadence-innovus-power
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 9-cadence-innovus-power/.prebuilt)","")
9-cadence-innovus-power/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
9-cadence-innovus-power/.stamp: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v
9-cadence-innovus-power/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
9-cadence-innovus-power/.stamp: 8-cadence-innovus-init/.execstamp 8-cadence-innovus-init/.postconditions.stamp 8-cadence-innovus-init/outputs/.execstamp.design.checkpoint 8-cadence-innovus-init/outputs/.stamp.design.checkpoint
9-cadence-innovus-power/.stamp:
	$(call cpdir-and-parameterize,9-cadence-innovus-power,../steps/cadence-innovus-power,9-cadence-innovus-power/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 9-cadence-innovus-power/.prebuilt)","")
9-cadence-innovus-power/inputs/.stamp.adk: 9-cadence-innovus-power/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,9-cadence-innovus-power/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 9-cadence-innovus-power/.prebuilt)","")
9-cadence-innovus-power/inputs/.stamp.design.checkpoint: 9-cadence-innovus-power/.stamp 8-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call symlink,9-cadence-innovus-power/inputs,design.checkpoint,../../8-cadence-innovus-init/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 9-cadence-innovus-power/.prebuilt)","")
9-cadence-innovus-power/inputs/.stamp.design.sdc: 9-cadence-innovus-power/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.sdc
	$(call symlink,9-cadence-innovus-power/inputs,design.sdc,../../5-cadence-genus-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 9-cadence-innovus-power/.prebuilt)","")
9-cadence-innovus-power/inputs/.stamp.innovus-foundation-flow: 9-cadence-innovus-power/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,9-cadence-innovus-power/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 9-cadence-innovus-power/.prebuilt)","")

define 9_cadence_innovus_power_commands_rule
	mkdir -p 9-cadence-innovus-power/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-power && chmod +x .mflowgen/9-cadence-innovus-power/mflowgen-run && cp -f .mflowgen/9-cadence-innovus-power/mflowgen-run 9-cadence-innovus-power && if [[ -e .mflowgen/9-cadence-innovus-power/mflowgen-debug ]]; then chmod +x .mflowgen/9-cadence-innovus-power/mflowgen-debug && cp -f .mflowgen/9-cadence-innovus-power/mflowgen-debug 9-cadence-innovus-power; fi && if [[ -e .mflowgen/9-cadence-innovus-power/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/9-cadence-innovus-power/mflowgen-check-preconditions.py && cp -f .mflowgen/9-cadence-innovus-power/mflowgen-check-preconditions.py 9-cadence-innovus-power; fi && if [[ -e .mflowgen/9-cadence-innovus-power/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/9-cadence-innovus-power/mflowgen-check-postconditions.py && cp -f .mflowgen/9-cadence-innovus-power/mflowgen-check-postconditions.py 9-cadence-innovus-power; fi && cd 9-cadence-innovus-power && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 9-cadence-innovus-power/outputs/*
endef

9-cadence-innovus-power/.execstamp: 9-cadence-innovus-power/.stamp 9-cadence-innovus-power/inputs/.stamp.adk 9-cadence-innovus-power/inputs/.stamp.design.checkpoint 9-cadence-innovus-power/inputs/.stamp.design.sdc 9-cadence-innovus-power/inputs/.stamp.innovus-foundation-flow
	$(call 9_cadence_innovus_power_commands_rule)
	touch $@

9-cadence-innovus-power/outputs/.execstamp.design.checkpoint: 9-cadence-innovus-power/.execstamp
	touch $@

endif

# collect outputs

9-cadence-innovus-power/outputs/.stamp.design.checkpoint: 9-cadence-innovus-power/.execstamp 9-cadence-innovus-power/outputs/.execstamp.design.checkpoint
	$(call stamp,9-cadence-innovus-power/outputs/.stamp.design.checkpoint)

# post-conditions

define 9_cadence_innovus_power_post_conditions_commands_rule
	cd 9-cadence-innovus-power && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

9-cadence-innovus-power/.postconditions.stamp: 9-cadence-innovus-power/.execstamp 9-cadence-innovus-power/outputs/.execstamp.design.checkpoint 9-cadence-innovus-power/outputs/.stamp.design.checkpoint
	$(call 9_cadence_innovus_power_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-power

cadence-innovus-power: 9-cadence-innovus-power/.execstamp 9-cadence-innovus-power/.postconditions.stamp 9-cadence-innovus-power/outputs/.execstamp.design.checkpoint 9-cadence-innovus-power/outputs/.stamp.design.checkpoint

.PHONY: 9

9: 9-cadence-innovus-power/.execstamp 9-cadence-innovus-power/.postconditions.stamp 9-cadence-innovus-power/outputs/.execstamp.design.checkpoint 9-cadence-innovus-power/outputs/.stamp.design.checkpoint

# debug

define 9_debug_rule
	cd 9-cadence-innovus-power && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-power: 
	$(call 9_debug_rule)

.PHONY: debug-9

debug-9: debug-cadence-innovus-power

# ------------------------------------------------------------------------
# cadence-innovus-place
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 10-cadence-innovus-place/.prebuilt)","")
10-cadence-innovus-place/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
10-cadence-innovus-place/.stamp: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v
10-cadence-innovus-place/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
10-cadence-innovus-place/.stamp: 9-cadence-innovus-power/.execstamp 9-cadence-innovus-power/.postconditions.stamp 9-cadence-innovus-power/outputs/.execstamp.design.checkpoint 9-cadence-innovus-power/outputs/.stamp.design.checkpoint
10-cadence-innovus-place/.stamp:
	$(call cpdir-and-parameterize,10-cadence-innovus-place,../steps/cadence-innovus-place,10-cadence-innovus-place/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 10-cadence-innovus-place/.prebuilt)","")
10-cadence-innovus-place/inputs/.stamp.adk: 10-cadence-innovus-place/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,10-cadence-innovus-place/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 10-cadence-innovus-place/.prebuilt)","")
10-cadence-innovus-place/inputs/.stamp.design.checkpoint: 10-cadence-innovus-place/.stamp 9-cadence-innovus-power/outputs/.stamp.design.checkpoint
	$(call symlink,10-cadence-innovus-place/inputs,design.checkpoint,../../9-cadence-innovus-power/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 10-cadence-innovus-place/.prebuilt)","")
10-cadence-innovus-place/inputs/.stamp.design.sdc: 10-cadence-innovus-place/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.sdc
	$(call symlink,10-cadence-innovus-place/inputs,design.sdc,../../5-cadence-genus-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 10-cadence-innovus-place/.prebuilt)","")
10-cadence-innovus-place/inputs/.stamp.innovus-foundation-flow: 10-cadence-innovus-place/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,10-cadence-innovus-place/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 10-cadence-innovus-place/.prebuilt)","")

define 10_cadence_innovus_place_commands_rule
	mkdir -p 10-cadence-innovus-place/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-place && chmod +x .mflowgen/10-cadence-innovus-place/mflowgen-run && cp -f .mflowgen/10-cadence-innovus-place/mflowgen-run 10-cadence-innovus-place && if [[ -e .mflowgen/10-cadence-innovus-place/mflowgen-debug ]]; then chmod +x .mflowgen/10-cadence-innovus-place/mflowgen-debug && cp -f .mflowgen/10-cadence-innovus-place/mflowgen-debug 10-cadence-innovus-place; fi && if [[ -e .mflowgen/10-cadence-innovus-place/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/10-cadence-innovus-place/mflowgen-check-preconditions.py && cp -f .mflowgen/10-cadence-innovus-place/mflowgen-check-preconditions.py 10-cadence-innovus-place; fi && if [[ -e .mflowgen/10-cadence-innovus-place/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/10-cadence-innovus-place/mflowgen-check-postconditions.py && cp -f .mflowgen/10-cadence-innovus-place/mflowgen-check-postconditions.py 10-cadence-innovus-place; fi && cd 10-cadence-innovus-place && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 10-cadence-innovus-place/outputs/*
endef

10-cadence-innovus-place/.execstamp: 10-cadence-innovus-place/.stamp 10-cadence-innovus-place/inputs/.stamp.adk 10-cadence-innovus-place/inputs/.stamp.design.checkpoint 10-cadence-innovus-place/inputs/.stamp.design.sdc 10-cadence-innovus-place/inputs/.stamp.innovus-foundation-flow
	$(call 10_cadence_innovus_place_commands_rule)
	touch $@

10-cadence-innovus-place/outputs/.execstamp.design.checkpoint: 10-cadence-innovus-place/.execstamp
	touch $@

endif

# collect outputs

10-cadence-innovus-place/outputs/.stamp.design.checkpoint: 10-cadence-innovus-place/.execstamp 10-cadence-innovus-place/outputs/.execstamp.design.checkpoint
	$(call stamp,10-cadence-innovus-place/outputs/.stamp.design.checkpoint)

# post-conditions

define 10_cadence_innovus_place_post_conditions_commands_rule
	cd 10-cadence-innovus-place && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

10-cadence-innovus-place/.postconditions.stamp: 10-cadence-innovus-place/.execstamp 10-cadence-innovus-place/outputs/.execstamp.design.checkpoint 10-cadence-innovus-place/outputs/.stamp.design.checkpoint
	$(call 10_cadence_innovus_place_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-place

cadence-innovus-place: 10-cadence-innovus-place/.execstamp 10-cadence-innovus-place/.postconditions.stamp 10-cadence-innovus-place/outputs/.execstamp.design.checkpoint 10-cadence-innovus-place/outputs/.stamp.design.checkpoint

.PHONY: 10

10: 10-cadence-innovus-place/.execstamp 10-cadence-innovus-place/.postconditions.stamp 10-cadence-innovus-place/outputs/.execstamp.design.checkpoint 10-cadence-innovus-place/outputs/.stamp.design.checkpoint

# debug

define 10_debug_rule
	cd 10-cadence-innovus-place && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-place: 
	$(call 10_debug_rule)

.PHONY: debug-10

debug-10: debug-cadence-innovus-place

# ------------------------------------------------------------------------
# cadence-innovus-cts
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 11-cadence-innovus-cts/.prebuilt)","")
11-cadence-innovus-cts/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
11-cadence-innovus-cts/.stamp: 10-cadence-innovus-place/.execstamp 10-cadence-innovus-place/.postconditions.stamp 10-cadence-innovus-place/outputs/.execstamp.design.checkpoint 10-cadence-innovus-place/outputs/.stamp.design.checkpoint
11-cadence-innovus-cts/.stamp: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v
11-cadence-innovus-cts/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
11-cadence-innovus-cts/.stamp:
	$(call cpdir-and-parameterize,11-cadence-innovus-cts,../steps/cadence-innovus-cts,11-cadence-innovus-cts/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 11-cadence-innovus-cts/.prebuilt)","")
11-cadence-innovus-cts/inputs/.stamp.adk: 11-cadence-innovus-cts/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,11-cadence-innovus-cts/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 11-cadence-innovus-cts/.prebuilt)","")
11-cadence-innovus-cts/inputs/.stamp.design.checkpoint: 11-cadence-innovus-cts/.stamp 10-cadence-innovus-place/outputs/.stamp.design.checkpoint
	$(call symlink,11-cadence-innovus-cts/inputs,design.checkpoint,../../10-cadence-innovus-place/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 11-cadence-innovus-cts/.prebuilt)","")
11-cadence-innovus-cts/inputs/.stamp.design.sdc: 11-cadence-innovus-cts/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.sdc
	$(call symlink,11-cadence-innovus-cts/inputs,design.sdc,../../5-cadence-genus-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 11-cadence-innovus-cts/.prebuilt)","")
11-cadence-innovus-cts/inputs/.stamp.innovus-foundation-flow: 11-cadence-innovus-cts/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,11-cadence-innovus-cts/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 11-cadence-innovus-cts/.prebuilt)","")

define 11_cadence_innovus_cts_commands_rule
	mkdir -p 11-cadence-innovus-cts/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-cts && chmod +x .mflowgen/11-cadence-innovus-cts/mflowgen-run && cp -f .mflowgen/11-cadence-innovus-cts/mflowgen-run 11-cadence-innovus-cts && if [[ -e .mflowgen/11-cadence-innovus-cts/mflowgen-debug ]]; then chmod +x .mflowgen/11-cadence-innovus-cts/mflowgen-debug && cp -f .mflowgen/11-cadence-innovus-cts/mflowgen-debug 11-cadence-innovus-cts; fi && if [[ -e .mflowgen/11-cadence-innovus-cts/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/11-cadence-innovus-cts/mflowgen-check-preconditions.py && cp -f .mflowgen/11-cadence-innovus-cts/mflowgen-check-preconditions.py 11-cadence-innovus-cts; fi && if [[ -e .mflowgen/11-cadence-innovus-cts/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/11-cadence-innovus-cts/mflowgen-check-postconditions.py && cp -f .mflowgen/11-cadence-innovus-cts/mflowgen-check-postconditions.py 11-cadence-innovus-cts; fi && cd 11-cadence-innovus-cts && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 11-cadence-innovus-cts/outputs/*
endef

11-cadence-innovus-cts/.execstamp: 11-cadence-innovus-cts/.stamp 11-cadence-innovus-cts/inputs/.stamp.adk 11-cadence-innovus-cts/inputs/.stamp.design.checkpoint 11-cadence-innovus-cts/inputs/.stamp.design.sdc 11-cadence-innovus-cts/inputs/.stamp.innovus-foundation-flow
	$(call 11_cadence_innovus_cts_commands_rule)
	touch $@

11-cadence-innovus-cts/outputs/.execstamp.design.checkpoint: 11-cadence-innovus-cts/.execstamp
	touch $@

endif

# collect outputs

11-cadence-innovus-cts/outputs/.stamp.design.checkpoint: 11-cadence-innovus-cts/.execstamp 11-cadence-innovus-cts/outputs/.execstamp.design.checkpoint
	$(call stamp,11-cadence-innovus-cts/outputs/.stamp.design.checkpoint)

# post-conditions

define 11_cadence_innovus_cts_post_conditions_commands_rule
	cd 11-cadence-innovus-cts && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

11-cadence-innovus-cts/.postconditions.stamp: 11-cadence-innovus-cts/.execstamp 11-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 11-cadence-innovus-cts/outputs/.stamp.design.checkpoint
	$(call 11_cadence_innovus_cts_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-cts

cadence-innovus-cts: 11-cadence-innovus-cts/.execstamp 11-cadence-innovus-cts/.postconditions.stamp 11-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 11-cadence-innovus-cts/outputs/.stamp.design.checkpoint

.PHONY: 11

11: 11-cadence-innovus-cts/.execstamp 11-cadence-innovus-cts/.postconditions.stamp 11-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 11-cadence-innovus-cts/outputs/.stamp.design.checkpoint

# debug

define 11_debug_rule
	cd 11-cadence-innovus-cts && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-cts: 
	$(call 11_debug_rule)

.PHONY: debug-11

debug-11: debug-cadence-innovus-cts

# ------------------------------------------------------------------------
# cadence-innovus-postcts_hold
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 12-cadence-innovus-postcts_hold/.prebuilt)","")
12-cadence-innovus-postcts_hold/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
12-cadence-innovus-postcts_hold/.stamp: 11-cadence-innovus-cts/.execstamp 11-cadence-innovus-cts/.postconditions.stamp 11-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 11-cadence-innovus-cts/outputs/.stamp.design.checkpoint
12-cadence-innovus-postcts_hold/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
12-cadence-innovus-postcts_hold/.stamp:
	$(call cpdir-and-parameterize,12-cadence-innovus-postcts_hold,../steps/cadence-innovus-postcts_hold,12-cadence-innovus-postcts_hold/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 12-cadence-innovus-postcts_hold/.prebuilt)","")
12-cadence-innovus-postcts_hold/inputs/.stamp.adk: 12-cadence-innovus-postcts_hold/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,12-cadence-innovus-postcts_hold/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 12-cadence-innovus-postcts_hold/.prebuilt)","")
12-cadence-innovus-postcts_hold/inputs/.stamp.design.checkpoint: 12-cadence-innovus-postcts_hold/.stamp 11-cadence-innovus-cts/outputs/.stamp.design.checkpoint
	$(call symlink,12-cadence-innovus-postcts_hold/inputs,design.checkpoint,../../11-cadence-innovus-cts/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 12-cadence-innovus-postcts_hold/.prebuilt)","")
12-cadence-innovus-postcts_hold/inputs/.stamp.innovus-foundation-flow: 12-cadence-innovus-postcts_hold/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,12-cadence-innovus-postcts_hold/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 12-cadence-innovus-postcts_hold/.prebuilt)","")

define 12_cadence_innovus_postcts_hold_commands_rule
	mkdir -p 12-cadence-innovus-postcts_hold/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postcts_hold && chmod +x .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-run && cp -f .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-run 12-cadence-innovus-postcts_hold && if [[ -e .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-debug ]]; then chmod +x .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-debug && cp -f .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-debug 12-cadence-innovus-postcts_hold; fi && if [[ -e .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py && cp -f .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py 12-cadence-innovus-postcts_hold; fi && if [[ -e .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py && cp -f .mflowgen/12-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py 12-cadence-innovus-postcts_hold; fi && cd 12-cadence-innovus-postcts_hold && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 12-cadence-innovus-postcts_hold/outputs/*
endef

12-cadence-innovus-postcts_hold/.execstamp: 12-cadence-innovus-postcts_hold/.stamp 12-cadence-innovus-postcts_hold/inputs/.stamp.adk 12-cadence-innovus-postcts_hold/inputs/.stamp.design.checkpoint 12-cadence-innovus-postcts_hold/inputs/.stamp.innovus-foundation-flow
	$(call 12_cadence_innovus_postcts_hold_commands_rule)
	touch $@

12-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint: 12-cadence-innovus-postcts_hold/.execstamp
	touch $@

endif

# collect outputs

12-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint: 12-cadence-innovus-postcts_hold/.execstamp 12-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint
	$(call stamp,12-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint)

# post-conditions

define 12_cadence_innovus_postcts_hold_post_conditions_commands_rule
	cd 12-cadence-innovus-postcts_hold && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

12-cadence-innovus-postcts_hold/.postconditions.stamp: 12-cadence-innovus-postcts_hold/.execstamp 12-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 12-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
	$(call 12_cadence_innovus_postcts_hold_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-postcts_hold

cadence-innovus-postcts_hold: 12-cadence-innovus-postcts_hold/.execstamp 12-cadence-innovus-postcts_hold/.postconditions.stamp 12-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 12-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint

.PHONY: 12

12: 12-cadence-innovus-postcts_hold/.execstamp 12-cadence-innovus-postcts_hold/.postconditions.stamp 12-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 12-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint

# debug

define 12_debug_rule
	cd 12-cadence-innovus-postcts_hold && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-postcts_hold: 
	$(call 12_debug_rule)

.PHONY: debug-12

debug-12: debug-cadence-innovus-postcts_hold

# ------------------------------------------------------------------------
# cadence-innovus-route
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 13-cadence-innovus-route/.prebuilt)","")
13-cadence-innovus-route/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
13-cadence-innovus-route/.stamp: 12-cadence-innovus-postcts_hold/.execstamp 12-cadence-innovus-postcts_hold/.postconditions.stamp 12-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 12-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
13-cadence-innovus-route/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
13-cadence-innovus-route/.stamp:
	$(call cpdir-and-parameterize,13-cadence-innovus-route,../steps/cadence-innovus-route,13-cadence-innovus-route/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 13-cadence-innovus-route/.prebuilt)","")
13-cadence-innovus-route/inputs/.stamp.adk: 13-cadence-innovus-route/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,13-cadence-innovus-route/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 13-cadence-innovus-route/.prebuilt)","")
13-cadence-innovus-route/inputs/.stamp.design.checkpoint: 13-cadence-innovus-route/.stamp 12-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
	$(call symlink,13-cadence-innovus-route/inputs,design.checkpoint,../../12-cadence-innovus-postcts_hold/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 13-cadence-innovus-route/.prebuilt)","")
13-cadence-innovus-route/inputs/.stamp.innovus-foundation-flow: 13-cadence-innovus-route/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,13-cadence-innovus-route/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 13-cadence-innovus-route/.prebuilt)","")

define 13_cadence_innovus_route_commands_rule
	mkdir -p 13-cadence-innovus-route/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-route && chmod +x .mflowgen/13-cadence-innovus-route/mflowgen-run && cp -f .mflowgen/13-cadence-innovus-route/mflowgen-run 13-cadence-innovus-route && if [[ -e .mflowgen/13-cadence-innovus-route/mflowgen-debug ]]; then chmod +x .mflowgen/13-cadence-innovus-route/mflowgen-debug && cp -f .mflowgen/13-cadence-innovus-route/mflowgen-debug 13-cadence-innovus-route; fi && if [[ -e .mflowgen/13-cadence-innovus-route/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/13-cadence-innovus-route/mflowgen-check-preconditions.py && cp -f .mflowgen/13-cadence-innovus-route/mflowgen-check-preconditions.py 13-cadence-innovus-route; fi && if [[ -e .mflowgen/13-cadence-innovus-route/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/13-cadence-innovus-route/mflowgen-check-postconditions.py && cp -f .mflowgen/13-cadence-innovus-route/mflowgen-check-postconditions.py 13-cadence-innovus-route; fi && cd 13-cadence-innovus-route && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 13-cadence-innovus-route/outputs/*
endef

13-cadence-innovus-route/.execstamp: 13-cadence-innovus-route/.stamp 13-cadence-innovus-route/inputs/.stamp.adk 13-cadence-innovus-route/inputs/.stamp.design.checkpoint 13-cadence-innovus-route/inputs/.stamp.innovus-foundation-flow
	$(call 13_cadence_innovus_route_commands_rule)
	touch $@

13-cadence-innovus-route/outputs/.execstamp.design.checkpoint: 13-cadence-innovus-route/.execstamp
	touch $@

endif

# collect outputs

13-cadence-innovus-route/outputs/.stamp.design.checkpoint: 13-cadence-innovus-route/.execstamp 13-cadence-innovus-route/outputs/.execstamp.design.checkpoint
	$(call stamp,13-cadence-innovus-route/outputs/.stamp.design.checkpoint)

# post-conditions

define 13_cadence_innovus_route_post_conditions_commands_rule
	cd 13-cadence-innovus-route && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

13-cadence-innovus-route/.postconditions.stamp: 13-cadence-innovus-route/.execstamp 13-cadence-innovus-route/outputs/.execstamp.design.checkpoint 13-cadence-innovus-route/outputs/.stamp.design.checkpoint
	$(call 13_cadence_innovus_route_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-route

cadence-innovus-route: 13-cadence-innovus-route/.execstamp 13-cadence-innovus-route/.postconditions.stamp 13-cadence-innovus-route/outputs/.execstamp.design.checkpoint 13-cadence-innovus-route/outputs/.stamp.design.checkpoint

.PHONY: 13

13: 13-cadence-innovus-route/.execstamp 13-cadence-innovus-route/.postconditions.stamp 13-cadence-innovus-route/outputs/.execstamp.design.checkpoint 13-cadence-innovus-route/outputs/.stamp.design.checkpoint

# debug

define 13_debug_rule
	cd 13-cadence-innovus-route && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-route: 
	$(call 13_debug_rule)

.PHONY: debug-13

debug-13: debug-cadence-innovus-route

# ------------------------------------------------------------------------
# cadence-innovus-postroute
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 14-cadence-innovus-postroute/.prebuilt)","")
14-cadence-innovus-postroute/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
14-cadence-innovus-postroute/.stamp: 13-cadence-innovus-route/.execstamp 13-cadence-innovus-route/.postconditions.stamp 13-cadence-innovus-route/outputs/.execstamp.design.checkpoint 13-cadence-innovus-route/outputs/.stamp.design.checkpoint
14-cadence-innovus-postroute/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
14-cadence-innovus-postroute/.stamp:
	$(call cpdir-and-parameterize,14-cadence-innovus-postroute,../steps/cadence-innovus-postroute,14-cadence-innovus-postroute/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 14-cadence-innovus-postroute/.prebuilt)","")
14-cadence-innovus-postroute/inputs/.stamp.adk: 14-cadence-innovus-postroute/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,14-cadence-innovus-postroute/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 14-cadence-innovus-postroute/.prebuilt)","")
14-cadence-innovus-postroute/inputs/.stamp.design.checkpoint: 14-cadence-innovus-postroute/.stamp 13-cadence-innovus-route/outputs/.stamp.design.checkpoint
	$(call symlink,14-cadence-innovus-postroute/inputs,design.checkpoint,../../13-cadence-innovus-route/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 14-cadence-innovus-postroute/.prebuilt)","")
14-cadence-innovus-postroute/inputs/.stamp.innovus-foundation-flow: 14-cadence-innovus-postroute/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,14-cadence-innovus-postroute/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 14-cadence-innovus-postroute/.prebuilt)","")

define 14_cadence_innovus_postroute_commands_rule
	mkdir -p 14-cadence-innovus-postroute/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postroute && chmod +x .mflowgen/14-cadence-innovus-postroute/mflowgen-run && cp -f .mflowgen/14-cadence-innovus-postroute/mflowgen-run 14-cadence-innovus-postroute && if [[ -e .mflowgen/14-cadence-innovus-postroute/mflowgen-debug ]]; then chmod +x .mflowgen/14-cadence-innovus-postroute/mflowgen-debug && cp -f .mflowgen/14-cadence-innovus-postroute/mflowgen-debug 14-cadence-innovus-postroute; fi && if [[ -e .mflowgen/14-cadence-innovus-postroute/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/14-cadence-innovus-postroute/mflowgen-check-preconditions.py && cp -f .mflowgen/14-cadence-innovus-postroute/mflowgen-check-preconditions.py 14-cadence-innovus-postroute; fi && if [[ -e .mflowgen/14-cadence-innovus-postroute/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/14-cadence-innovus-postroute/mflowgen-check-postconditions.py && cp -f .mflowgen/14-cadence-innovus-postroute/mflowgen-check-postconditions.py 14-cadence-innovus-postroute; fi && cd 14-cadence-innovus-postroute && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 14-cadence-innovus-postroute/outputs/*
endef

14-cadence-innovus-postroute/.execstamp: 14-cadence-innovus-postroute/.stamp 14-cadence-innovus-postroute/inputs/.stamp.adk 14-cadence-innovus-postroute/inputs/.stamp.design.checkpoint 14-cadence-innovus-postroute/inputs/.stamp.innovus-foundation-flow
	$(call 14_cadence_innovus_postroute_commands_rule)
	touch $@

14-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint: 14-cadence-innovus-postroute/.execstamp
	touch $@

endif

# collect outputs

14-cadence-innovus-postroute/outputs/.stamp.design.checkpoint: 14-cadence-innovus-postroute/.execstamp 14-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint
	$(call stamp,14-cadence-innovus-postroute/outputs/.stamp.design.checkpoint)

# post-conditions

define 14_cadence_innovus_postroute_post_conditions_commands_rule
	cd 14-cadence-innovus-postroute && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

14-cadence-innovus-postroute/.postconditions.stamp: 14-cadence-innovus-postroute/.execstamp 14-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 14-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
	$(call 14_cadence_innovus_postroute_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-postroute

cadence-innovus-postroute: 14-cadence-innovus-postroute/.execstamp 14-cadence-innovus-postroute/.postconditions.stamp 14-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 14-cadence-innovus-postroute/outputs/.stamp.design.checkpoint

.PHONY: 14

14: 14-cadence-innovus-postroute/.execstamp 14-cadence-innovus-postroute/.postconditions.stamp 14-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 14-cadence-innovus-postroute/outputs/.stamp.design.checkpoint

# debug

define 14_debug_rule
	cd 14-cadence-innovus-postroute && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-postroute: 
	$(call 14_debug_rule)

.PHONY: debug-14

debug-14: debug-cadence-innovus-postroute

# ------------------------------------------------------------------------
# cadence-innovus-postroute_hold
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 15-cadence-innovus-postroute_hold/.prebuilt)","")
15-cadence-innovus-postroute_hold/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
15-cadence-innovus-postroute_hold/.stamp: 14-cadence-innovus-postroute/.execstamp 14-cadence-innovus-postroute/.postconditions.stamp 14-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 14-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
15-cadence-innovus-postroute_hold/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
15-cadence-innovus-postroute_hold/.stamp:
	$(call cpdir-and-parameterize,15-cadence-innovus-postroute_hold,../steps/cadence-innovus-postroute_hold,15-cadence-innovus-postroute_hold/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 15-cadence-innovus-postroute_hold/.prebuilt)","")
15-cadence-innovus-postroute_hold/inputs/.stamp.adk: 15-cadence-innovus-postroute_hold/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,15-cadence-innovus-postroute_hold/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 15-cadence-innovus-postroute_hold/.prebuilt)","")
15-cadence-innovus-postroute_hold/inputs/.stamp.design.checkpoint: 15-cadence-innovus-postroute_hold/.stamp 14-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
	$(call symlink,15-cadence-innovus-postroute_hold/inputs,design.checkpoint,../../14-cadence-innovus-postroute/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 15-cadence-innovus-postroute_hold/.prebuilt)","")
15-cadence-innovus-postroute_hold/inputs/.stamp.innovus-foundation-flow: 15-cadence-innovus-postroute_hold/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,15-cadence-innovus-postroute_hold/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 15-cadence-innovus-postroute_hold/.prebuilt)","")

define 15_cadence_innovus_postroute_hold_commands_rule
	mkdir -p 15-cadence-innovus-postroute_hold/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postroute_hold && chmod +x .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-run && cp -f .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-run 15-cadence-innovus-postroute_hold && if [[ -e .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-debug ]]; then chmod +x .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-debug && cp -f .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-debug 15-cadence-innovus-postroute_hold; fi && if [[ -e .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-check-preconditions.py && cp -f .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-check-preconditions.py 15-cadence-innovus-postroute_hold; fi && if [[ -e .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-check-postconditions.py && cp -f .mflowgen/15-cadence-innovus-postroute_hold/mflowgen-check-postconditions.py 15-cadence-innovus-postroute_hold; fi && cd 15-cadence-innovus-postroute_hold && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 15-cadence-innovus-postroute_hold/outputs/*
endef

15-cadence-innovus-postroute_hold/.execstamp: 15-cadence-innovus-postroute_hold/.stamp 15-cadence-innovus-postroute_hold/inputs/.stamp.adk 15-cadence-innovus-postroute_hold/inputs/.stamp.design.checkpoint 15-cadence-innovus-postroute_hold/inputs/.stamp.innovus-foundation-flow
	$(call 15_cadence_innovus_postroute_hold_commands_rule)
	touch $@

15-cadence-innovus-postroute_hold/outputs/.execstamp.design.checkpoint: 15-cadence-innovus-postroute_hold/.execstamp
	touch $@

endif

# collect outputs

15-cadence-innovus-postroute_hold/outputs/.stamp.design.checkpoint: 15-cadence-innovus-postroute_hold/.execstamp 15-cadence-innovus-postroute_hold/outputs/.execstamp.design.checkpoint
	$(call stamp,15-cadence-innovus-postroute_hold/outputs/.stamp.design.checkpoint)

# post-conditions

define 15_cadence_innovus_postroute_hold_post_conditions_commands_rule
	cd 15-cadence-innovus-postroute_hold && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

15-cadence-innovus-postroute_hold/.postconditions.stamp: 15-cadence-innovus-postroute_hold/.execstamp 15-cadence-innovus-postroute_hold/outputs/.execstamp.design.checkpoint 15-cadence-innovus-postroute_hold/outputs/.stamp.design.checkpoint
	$(call 15_cadence_innovus_postroute_hold_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-postroute_hold

cadence-innovus-postroute_hold: 15-cadence-innovus-postroute_hold/.execstamp 15-cadence-innovus-postroute_hold/.postconditions.stamp 15-cadence-innovus-postroute_hold/outputs/.execstamp.design.checkpoint 15-cadence-innovus-postroute_hold/outputs/.stamp.design.checkpoint

.PHONY: 15

15: 15-cadence-innovus-postroute_hold/.execstamp 15-cadence-innovus-postroute_hold/.postconditions.stamp 15-cadence-innovus-postroute_hold/outputs/.execstamp.design.checkpoint 15-cadence-innovus-postroute_hold/outputs/.stamp.design.checkpoint

# debug

define 15_debug_rule
	cd 15-cadence-innovus-postroute_hold && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-postroute_hold: 
	$(call 15_debug_rule)

.PHONY: debug-15

debug-15: debug-cadence-innovus-postroute_hold

# ------------------------------------------------------------------------
# cadence-innovus-signoff
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 16-cadence-innovus-signoff/.prebuilt)","")
16-cadence-innovus-signoff/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
16-cadence-innovus-signoff/.stamp: 15-cadence-innovus-postroute_hold/.execstamp 15-cadence-innovus-postroute_hold/.postconditions.stamp 15-cadence-innovus-postroute_hold/outputs/.execstamp.design.checkpoint 15-cadence-innovus-postroute_hold/outputs/.stamp.design.checkpoint
16-cadence-innovus-signoff/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
16-cadence-innovus-signoff/.stamp:
	$(call cpdir-and-parameterize,16-cadence-innovus-signoff,../steps/cadence-innovus-signoff,16-cadence-innovus-signoff/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 16-cadence-innovus-signoff/.prebuilt)","")
16-cadence-innovus-signoff/inputs/.stamp.adk: 16-cadence-innovus-signoff/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,16-cadence-innovus-signoff/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 16-cadence-innovus-signoff/.prebuilt)","")
16-cadence-innovus-signoff/inputs/.stamp.design.checkpoint: 16-cadence-innovus-signoff/.stamp 15-cadence-innovus-postroute_hold/outputs/.stamp.design.checkpoint
	$(call symlink,16-cadence-innovus-signoff/inputs,design.checkpoint,../../15-cadence-innovus-postroute_hold/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 16-cadence-innovus-signoff/.prebuilt)","")
16-cadence-innovus-signoff/inputs/.stamp.innovus-foundation-flow: 16-cadence-innovus-signoff/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,16-cadence-innovus-signoff/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 16-cadence-innovus-signoff/.prebuilt)","")

define 16_cadence_innovus_signoff_commands_rule
	mkdir -p 16-cadence-innovus-signoff/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && chmod +x .mflowgen/16-cadence-innovus-signoff/mflowgen-run && cp -f .mflowgen/16-cadence-innovus-signoff/mflowgen-run 16-cadence-innovus-signoff && if [[ -e .mflowgen/16-cadence-innovus-signoff/mflowgen-debug ]]; then chmod +x .mflowgen/16-cadence-innovus-signoff/mflowgen-debug && cp -f .mflowgen/16-cadence-innovus-signoff/mflowgen-debug 16-cadence-innovus-signoff; fi && if [[ -e .mflowgen/16-cadence-innovus-signoff/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/16-cadence-innovus-signoff/mflowgen-check-preconditions.py && cp -f .mflowgen/16-cadence-innovus-signoff/mflowgen-check-preconditions.py 16-cadence-innovus-signoff; fi && if [[ -e .mflowgen/16-cadence-innovus-signoff/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/16-cadence-innovus-signoff/mflowgen-check-postconditions.py && cp -f .mflowgen/16-cadence-innovus-signoff/mflowgen-check-postconditions.py 16-cadence-innovus-signoff; fi && cd 16-cadence-innovus-signoff && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 16-cadence-innovus-signoff/outputs/*
endef

16-cadence-innovus-signoff/.execstamp: 16-cadence-innovus-signoff/.stamp 16-cadence-innovus-signoff/inputs/.stamp.adk 16-cadence-innovus-signoff/inputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/inputs/.stamp.innovus-foundation-flow
	$(call 16_cadence_innovus_signoff_commands_rule)
	touch $@

16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.lef: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.sdf: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz: 16-cadence-innovus-signoff/.execstamp
	touch $@
16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz: 16-cadence-innovus-signoff/.execstamp
	touch $@

endif

# collect outputs

16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint)

16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz)

16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds)

16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v)

16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v)

16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v)

16-cadence-innovus-signoff/outputs/.stamp.design.lef: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.lef)

16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc)

16-cadence-innovus-signoff/outputs/.stamp.design.sdf: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.sdf)

16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v)

16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz)

16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz)

16-cadence-innovus-signoff/outputs/.stamp.design.def.gz: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,16-cadence-innovus-signoff/outputs/.stamp.design.def.gz)

# post-conditions

define 16_cadence_innovus_signoff_post_conditions_commands_rule
	cd 16-cadence-innovus-signoff && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

16-cadence-innovus-signoff/.postconditions.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
	$(call 16_cadence_innovus_signoff_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-signoff

cadence-innovus-signoff: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v

.PHONY: 16

16: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v

# debug

define 16_debug_rule
	cd 16-cadence-innovus-signoff && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-signoff: 
	$(call 16_debug_rule)

.PHONY: debug-16

debug-16: debug-cadence-innovus-signoff

# ------------------------------------------------------------------------
# mentor-calibre-gdsmerge
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 17-mentor-calibre-gdsmerge/.prebuilt)","")
17-mentor-calibre-gdsmerge/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
17-mentor-calibre-gdsmerge/.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
17-mentor-calibre-gdsmerge/.stamp:
	$(call cpdir-and-parameterize,17-mentor-calibre-gdsmerge,../steps/mentor-calibre-gdsmerge,17-mentor-calibre-gdsmerge/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 17-mentor-calibre-gdsmerge/.prebuilt)","")
17-mentor-calibre-gdsmerge/inputs/.stamp.adk: 17-mentor-calibre-gdsmerge/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,17-mentor-calibre-gdsmerge/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 17-mentor-calibre-gdsmerge/.prebuilt)","")
17-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz: 17-mentor-calibre-gdsmerge/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz
	$(call symlink,17-mentor-calibre-gdsmerge/inputs,design.gds.gz,../../16-cadence-innovus-signoff/outputs/design.gds.gz,.stamp.design.gds.gz)
endif

# execute

ifeq ("$(wildcard 17-mentor-calibre-gdsmerge/.prebuilt)","")

define 17_mentor_calibre_gdsmerge_commands_rule
	mkdir -p 17-mentor-calibre-gdsmerge/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && chmod +x .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-run && cp -f .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-run 17-mentor-calibre-gdsmerge && if [[ -e .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-debug ]]; then chmod +x .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-debug && cp -f .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-debug 17-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py && cp -f .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py 17-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py && cp -f .mflowgen/17-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py 17-mentor-calibre-gdsmerge; fi && cd 17-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 17-mentor-calibre-gdsmerge/outputs/*
endef

17-mentor-calibre-gdsmerge/.execstamp: 17-mentor-calibre-gdsmerge/.stamp 17-mentor-calibre-gdsmerge/inputs/.stamp.adk 17-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz
	$(call 17_mentor_calibre_gdsmerge_commands_rule)
	touch $@

17-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds: 17-mentor-calibre-gdsmerge/.execstamp
	touch $@

endif

# collect outputs

17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds: 17-mentor-calibre-gdsmerge/.execstamp 17-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds
	$(call stamp,17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds)

# post-conditions

define 17_mentor_calibre_gdsmerge_post_conditions_commands_rule
	cd 17-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

17-mentor-calibre-gdsmerge/.postconditions.stamp: 17-mentor-calibre-gdsmerge/.execstamp 17-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call 17_mentor_calibre_gdsmerge_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-gdsmerge

mentor-calibre-gdsmerge: 17-mentor-calibre-gdsmerge/.execstamp 17-mentor-calibre-gdsmerge/.postconditions.stamp 17-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

.PHONY: 17

17: 17-mentor-calibre-gdsmerge/.execstamp 17-mentor-calibre-gdsmerge/.postconditions.stamp 17-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

# debug

define 17_debug_rule
	cd 17-mentor-calibre-gdsmerge && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-gdsmerge: 
	$(call 17_debug_rule)

.PHONY: debug-17

debug-17: debug-mentor-calibre-gdsmerge

# ------------------------------------------------------------------------
# synopsys-pt-timing-signoff
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 18-synopsys-pt-timing-signoff/.prebuilt)","")
18-synopsys-pt-timing-signoff/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
18-synopsys-pt-timing-signoff/.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
18-synopsys-pt-timing-signoff/.stamp:
	$(call cpdir-and-parameterize,18-synopsys-pt-timing-signoff,../steps/synopsys-pt-timing-signoff,18-synopsys-pt-timing-signoff/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 18-synopsys-pt-timing-signoff/.prebuilt)","")
18-synopsys-pt-timing-signoff/inputs/.stamp.adk: 18-synopsys-pt-timing-signoff/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,18-synopsys-pt-timing-signoff/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 18-synopsys-pt-timing-signoff/.prebuilt)","")
18-synopsys-pt-timing-signoff/inputs/.stamp.design.pt.sdc: 18-synopsys-pt-timing-signoff/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,18-synopsys-pt-timing-signoff/inputs,design.pt.sdc,../../16-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 18-synopsys-pt-timing-signoff/.prebuilt)","")
18-synopsys-pt-timing-signoff/inputs/.stamp.design.spef.gz: 18-synopsys-pt-timing-signoff/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,18-synopsys-pt-timing-signoff/inputs,design.spef.gz,../../16-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 18-synopsys-pt-timing-signoff/.prebuilt)","")
18-synopsys-pt-timing-signoff/inputs/.stamp.design.vcs.v: 18-synopsys-pt-timing-signoff/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,18-synopsys-pt-timing-signoff/inputs,design.vcs.v,../../16-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

# execute

ifeq ("$(wildcard 18-synopsys-pt-timing-signoff/.prebuilt)","")

define 18_synopsys_pt_timing_signoff_commands_rule
	mkdir -p 18-synopsys-pt-timing-signoff/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-pt-timing-signoff && chmod +x .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-run && cp -f .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-run 18-synopsys-pt-timing-signoff && if [[ -e .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-debug ]]; then chmod +x .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-debug && cp -f .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-debug 18-synopsys-pt-timing-signoff; fi && if [[ -e .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py && cp -f .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py 18-synopsys-pt-timing-signoff; fi && if [[ -e .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py && cp -f .mflowgen/18-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py 18-synopsys-pt-timing-signoff; fi && cd 18-synopsys-pt-timing-signoff && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 18-synopsys-pt-timing-signoff/outputs/*
endef

18-synopsys-pt-timing-signoff/.execstamp: 18-synopsys-pt-timing-signoff/.stamp 18-synopsys-pt-timing-signoff/inputs/.stamp.adk 18-synopsys-pt-timing-signoff/inputs/.stamp.design.pt.sdc 18-synopsys-pt-timing-signoff/inputs/.stamp.design.spef.gz 18-synopsys-pt-timing-signoff/inputs/.stamp.design.vcs.v
	$(call 18_synopsys_pt_timing_signoff_commands_rule)
	touch $@

18-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf: 18-synopsys-pt-timing-signoff/.execstamp
	touch $@

endif

# collect outputs

18-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf: 18-synopsys-pt-timing-signoff/.execstamp 18-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf
	$(call stamp,18-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf)

# post-conditions

define 18_synopsys_pt_timing_signoff_post_conditions_commands_rule
	cd 18-synopsys-pt-timing-signoff && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

18-synopsys-pt-timing-signoff/.postconditions.stamp: 18-synopsys-pt-timing-signoff/.execstamp 18-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 18-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf
	$(call 18_synopsys_pt_timing_signoff_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-pt-timing-signoff

synopsys-pt-timing-signoff: 18-synopsys-pt-timing-signoff/.execstamp 18-synopsys-pt-timing-signoff/.postconditions.stamp 18-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 18-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf

.PHONY: 18

18: 18-synopsys-pt-timing-signoff/.execstamp 18-synopsys-pt-timing-signoff/.postconditions.stamp 18-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 18-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf

# debug

# ------------------------------------------------------------------------
# synopsys-ptpx-genlibdb
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 19-synopsys-ptpx-genlibdb/.prebuilt)","")
19-synopsys-ptpx-genlibdb/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
19-synopsys-ptpx-genlibdb/.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
19-synopsys-ptpx-genlibdb/.stamp:
	$(call cpdir-and-parameterize,19-synopsys-ptpx-genlibdb,../steps/synopsys-ptpx-genlibdb,19-synopsys-ptpx-genlibdb/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 19-synopsys-ptpx-genlibdb/.prebuilt)","")
19-synopsys-ptpx-genlibdb/inputs/.stamp.adk: 19-synopsys-ptpx-genlibdb/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,19-synopsys-ptpx-genlibdb/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 19-synopsys-ptpx-genlibdb/.prebuilt)","")
19-synopsys-ptpx-genlibdb/inputs/.stamp.design.pt.sdc: 19-synopsys-ptpx-genlibdb/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,19-synopsys-ptpx-genlibdb/inputs,design.pt.sdc,../../16-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 19-synopsys-ptpx-genlibdb/.prebuilt)","")
19-synopsys-ptpx-genlibdb/inputs/.stamp.design.spef.gz: 19-synopsys-ptpx-genlibdb/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,19-synopsys-ptpx-genlibdb/inputs,design.spef.gz,../../16-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 19-synopsys-ptpx-genlibdb/.prebuilt)","")
19-synopsys-ptpx-genlibdb/inputs/.stamp.design.vcs.v: 19-synopsys-ptpx-genlibdb/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,19-synopsys-ptpx-genlibdb/inputs,design.vcs.v,../../16-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

# execute

ifeq ("$(wildcard 19-synopsys-ptpx-genlibdb/.prebuilt)","")

define 19_synopsys_ptpx_genlibdb_commands_rule
	mkdir -p 19-synopsys-ptpx-genlibdb/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-genlibdb && chmod +x .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-run && cp -f .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-run 19-synopsys-ptpx-genlibdb && if [[ -e .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-debug ]]; then chmod +x .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-debug && cp -f .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-debug 19-synopsys-ptpx-genlibdb; fi && if [[ -e .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-check-preconditions.py && cp -f .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-check-preconditions.py 19-synopsys-ptpx-genlibdb; fi && if [[ -e .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-check-postconditions.py && cp -f .mflowgen/19-synopsys-ptpx-genlibdb/mflowgen-check-postconditions.py 19-synopsys-ptpx-genlibdb; fi && cd 19-synopsys-ptpx-genlibdb && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 19-synopsys-ptpx-genlibdb/outputs/*
endef

19-synopsys-ptpx-genlibdb/.execstamp: 19-synopsys-ptpx-genlibdb/.stamp 19-synopsys-ptpx-genlibdb/inputs/.stamp.adk 19-synopsys-ptpx-genlibdb/inputs/.stamp.design.pt.sdc 19-synopsys-ptpx-genlibdb/inputs/.stamp.design.spef.gz 19-synopsys-ptpx-genlibdb/inputs/.stamp.design.vcs.v
	$(call 19_synopsys_ptpx_genlibdb_commands_rule)
	touch $@

19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.lib: 19-synopsys-ptpx-genlibdb/.execstamp
	touch $@
19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.db: 19-synopsys-ptpx-genlibdb/.execstamp
	touch $@

endif

# collect outputs

19-synopsys-ptpx-genlibdb/outputs/.stamp.design.lib: 19-synopsys-ptpx-genlibdb/.execstamp 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.db 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.lib
	$(call stamp,19-synopsys-ptpx-genlibdb/outputs/.stamp.design.lib)

19-synopsys-ptpx-genlibdb/outputs/.stamp.design.db: 19-synopsys-ptpx-genlibdb/.execstamp 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.db 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.lib
	$(call stamp,19-synopsys-ptpx-genlibdb/outputs/.stamp.design.db)

# post-conditions

define 19_synopsys_ptpx_genlibdb_post_conditions_commands_rule
	cd 19-synopsys-ptpx-genlibdb && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

19-synopsys-ptpx-genlibdb/.postconditions.stamp: 19-synopsys-ptpx-genlibdb/.execstamp 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.db 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.lib 19-synopsys-ptpx-genlibdb/outputs/.stamp.design.db 19-synopsys-ptpx-genlibdb/outputs/.stamp.design.lib
	$(call 19_synopsys_ptpx_genlibdb_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-ptpx-genlibdb

synopsys-ptpx-genlibdb: 19-synopsys-ptpx-genlibdb/.execstamp 19-synopsys-ptpx-genlibdb/.postconditions.stamp 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.db 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.lib 19-synopsys-ptpx-genlibdb/outputs/.stamp.design.db 19-synopsys-ptpx-genlibdb/outputs/.stamp.design.lib

.PHONY: 19

19: 19-synopsys-ptpx-genlibdb/.execstamp 19-synopsys-ptpx-genlibdb/.postconditions.stamp 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.db 19-synopsys-ptpx-genlibdb/outputs/.execstamp.design.lib 19-synopsys-ptpx-genlibdb/outputs/.stamp.design.db 19-synopsys-ptpx-genlibdb/outputs/.stamp.design.lib

# debug

# ------------------------------------------------------------------------
# synopsys-vcs-sim
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 20-synopsys-vcs-sim/.prebuilt)","")
20-synopsys-vcs-sim/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
20-synopsys-vcs-sim/.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
20-synopsys-vcs-sim/.stamp: 4-testbench/.execstamp 4-testbench/.postconditions.stamp 4-testbench/outputs/.execstamp.design.args 4-testbench/outputs/.execstamp.test_vectors.txt 4-testbench/outputs/.execstamp.testbench.sv 4-testbench/outputs/.stamp.design.args 4-testbench/outputs/.stamp.test_vectors.txt 4-testbench/outputs/.stamp.testbench.sv
20-synopsys-vcs-sim/.stamp:
	$(call cpdir-and-parameterize,20-synopsys-vcs-sim,../steps/synopsys-vcs-sim,20-synopsys-vcs-sim/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 20-synopsys-vcs-sim/.prebuilt)","")
20-synopsys-vcs-sim/inputs/.stamp.adk: 20-synopsys-vcs-sim/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,20-synopsys-vcs-sim/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 20-synopsys-vcs-sim/.prebuilt)","")
20-synopsys-vcs-sim/inputs/.stamp.design.args: 20-synopsys-vcs-sim/.stamp 4-testbench/outputs/.stamp.design.args
	$(call symlink,20-synopsys-vcs-sim/inputs,design.args,../../4-testbench/outputs/design.args,.stamp.design.args)
endif

ifeq ("$(wildcard 20-synopsys-vcs-sim/.prebuilt)","")
20-synopsys-vcs-sim/inputs/.stamp.design.sdf: 20-synopsys-vcs-sim/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.sdf
	$(call symlink,20-synopsys-vcs-sim/inputs,design.sdf,../../16-cadence-innovus-signoff/outputs/design.sdf,.stamp.design.sdf)
endif

ifeq ("$(wildcard 20-synopsys-vcs-sim/.prebuilt)","")
20-synopsys-vcs-sim/inputs/.stamp.design.vcs.v: 20-synopsys-vcs-sim/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,20-synopsys-vcs-sim/inputs,design.vcs.v,../../16-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 20-synopsys-vcs-sim/.prebuilt)","")
20-synopsys-vcs-sim/inputs/.stamp.test_vectors.txt: 20-synopsys-vcs-sim/.stamp 4-testbench/outputs/.stamp.test_vectors.txt
	$(call symlink,20-synopsys-vcs-sim/inputs,test_vectors.txt,../../4-testbench/outputs/test_vectors.txt,.stamp.test_vectors.txt)
endif

ifeq ("$(wildcard 20-synopsys-vcs-sim/.prebuilt)","")
20-synopsys-vcs-sim/inputs/.stamp.testbench.sv: 20-synopsys-vcs-sim/.stamp 4-testbench/outputs/.stamp.testbench.sv
	$(call symlink,20-synopsys-vcs-sim/inputs,testbench.sv,../../4-testbench/outputs/testbench.sv,.stamp.testbench.sv)
endif

# execute

ifeq ("$(wildcard 20-synopsys-vcs-sim/.prebuilt)","")

define 20_synopsys_vcs_sim_commands_rule
	mkdir -p 20-synopsys-vcs-sim/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-vcs-sim && chmod +x .mflowgen/20-synopsys-vcs-sim/mflowgen-run && cp -f .mflowgen/20-synopsys-vcs-sim/mflowgen-run 20-synopsys-vcs-sim && if [[ -e .mflowgen/20-synopsys-vcs-sim/mflowgen-debug ]]; then chmod +x .mflowgen/20-synopsys-vcs-sim/mflowgen-debug && cp -f .mflowgen/20-synopsys-vcs-sim/mflowgen-debug 20-synopsys-vcs-sim; fi && if [[ -e .mflowgen/20-synopsys-vcs-sim/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/20-synopsys-vcs-sim/mflowgen-check-preconditions.py && cp -f .mflowgen/20-synopsys-vcs-sim/mflowgen-check-preconditions.py 20-synopsys-vcs-sim; fi && if [[ -e .mflowgen/20-synopsys-vcs-sim/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/20-synopsys-vcs-sim/mflowgen-check-postconditions.py && cp -f .mflowgen/20-synopsys-vcs-sim/mflowgen-check-postconditions.py 20-synopsys-vcs-sim; fi && cd 20-synopsys-vcs-sim && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 20-synopsys-vcs-sim/outputs/*
endef

20-synopsys-vcs-sim/.execstamp: 20-synopsys-vcs-sim/.stamp 20-synopsys-vcs-sim/inputs/.stamp.adk 20-synopsys-vcs-sim/inputs/.stamp.design.args 20-synopsys-vcs-sim/inputs/.stamp.design.sdf 20-synopsys-vcs-sim/inputs/.stamp.design.vcs.v 20-synopsys-vcs-sim/inputs/.stamp.test_vectors.txt 20-synopsys-vcs-sim/inputs/.stamp.testbench.sv
	$(call 20_synopsys_vcs_sim_commands_rule)
	touch $@

20-synopsys-vcs-sim/outputs/.execstamp.run.vcd: 20-synopsys-vcs-sim/.execstamp
	touch $@

endif

# collect outputs

20-synopsys-vcs-sim/outputs/.stamp.run.vcd: 20-synopsys-vcs-sim/.execstamp 20-synopsys-vcs-sim/outputs/.execstamp.run.vcd
	$(call stamp,20-synopsys-vcs-sim/outputs/.stamp.run.vcd)

# post-conditions

define 20_synopsys_vcs_sim_post_conditions_commands_rule
	cd 20-synopsys-vcs-sim && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

20-synopsys-vcs-sim/.postconditions.stamp: 20-synopsys-vcs-sim/.execstamp 20-synopsys-vcs-sim/outputs/.execstamp.run.vcd 20-synopsys-vcs-sim/outputs/.stamp.run.vcd
	$(call 20_synopsys_vcs_sim_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-vcs-sim

synopsys-vcs-sim: 20-synopsys-vcs-sim/.execstamp 20-synopsys-vcs-sim/.postconditions.stamp 20-synopsys-vcs-sim/outputs/.execstamp.run.vcd 20-synopsys-vcs-sim/outputs/.stamp.run.vcd

.PHONY: 20

20: 20-synopsys-vcs-sim/.execstamp 20-synopsys-vcs-sim/.postconditions.stamp 20-synopsys-vcs-sim/outputs/.execstamp.run.vcd 20-synopsys-vcs-sim/outputs/.stamp.run.vcd

# debug

# ------------------------------------------------------------------------
# verif_post_layout
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 21-verif_post_layout/.prebuilt)","")
21-verif_post_layout/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
21-verif_post_layout/.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
21-verif_post_layout/.stamp: 5-cadence-genus-synthesis/.execstamp 5-cadence-genus-synthesis/.postconditions.stamp 5-cadence-genus-synthesis/outputs/.execstamp.design.namemap 5-cadence-genus-synthesis/outputs/.execstamp.design.sdc 5-cadence-genus-synthesis/outputs/.execstamp.design.sdf 5-cadence-genus-synthesis/outputs/.execstamp.design.spef 5-cadence-genus-synthesis/outputs/.execstamp.design.v 5-cadence-genus-synthesis/outputs/.stamp.design.namemap 5-cadence-genus-synthesis/outputs/.stamp.design.sdc 5-cadence-genus-synthesis/outputs/.stamp.design.sdf 5-cadence-genus-synthesis/outputs/.stamp.design.spef 5-cadence-genus-synthesis/outputs/.stamp.design.v
21-verif_post_layout/.stamp:
	$(call cpdir-and-parameterize,21-verif_post_layout,../steps/synopsys-formality-verification,21-verif_post_layout/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 21-verif_post_layout/.prebuilt)","")
21-verif_post_layout/inputs/.stamp.adk: 21-verif_post_layout/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,21-verif_post_layout/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 21-verif_post_layout/.prebuilt)","")
21-verif_post_layout/inputs/.stamp.design.impl.v: 21-verif_post_layout/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,21-verif_post_layout/inputs,design.impl.v,../../16-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.impl.v)
endif

ifeq ("$(wildcard 21-verif_post_layout/.prebuilt)","")
21-verif_post_layout/inputs/.stamp.design.ref.v: 21-verif_post_layout/.stamp 5-cadence-genus-synthesis/outputs/.stamp.design.v
	$(call symlink,21-verif_post_layout/inputs,design.ref.v,../../5-cadence-genus-synthesis/outputs/design.v,.stamp.design.ref.v)
endif

# execute

ifeq ("$(wildcard 21-verif_post_layout/.prebuilt)","")

define 21_verif_post_layout_commands_rule
	mkdir -p 21-verif_post_layout/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t verif_post_layout && chmod +x .mflowgen/21-verif_post_layout/mflowgen-run && cp -f .mflowgen/21-verif_post_layout/mflowgen-run 21-verif_post_layout && if [[ -e .mflowgen/21-verif_post_layout/mflowgen-debug ]]; then chmod +x .mflowgen/21-verif_post_layout/mflowgen-debug && cp -f .mflowgen/21-verif_post_layout/mflowgen-debug 21-verif_post_layout; fi && if [[ -e .mflowgen/21-verif_post_layout/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/21-verif_post_layout/mflowgen-check-preconditions.py && cp -f .mflowgen/21-verif_post_layout/mflowgen-check-preconditions.py 21-verif_post_layout; fi && if [[ -e .mflowgen/21-verif_post_layout/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/21-verif_post_layout/mflowgen-check-postconditions.py && cp -f .mflowgen/21-verif_post_layout/mflowgen-check-postconditions.py 21-verif_post_layout; fi && cd 21-verif_post_layout && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 21-verif_post_layout/outputs/*
endef

21-verif_post_layout/.execstamp: 21-verif_post_layout/.stamp 21-verif_post_layout/inputs/.stamp.adk 21-verif_post_layout/inputs/.stamp.design.impl.v 21-verif_post_layout/inputs/.stamp.design.ref.v
	$(call 21_verif_post_layout_commands_rule)

21-verif_post_layout/.execstamp.execute-phony: 21-verif_post_layout/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 21_verif_post_layout_post_conditions_commands_rule
	cd 21-verif_post_layout && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

21-verif_post_layout/.postconditions.stamp: 21-verif_post_layout/.execstamp 21-verif_post_layout/.execstamp.execute-phony
	$(call 21_verif_post_layout_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: verif_post_layout

verif_post_layout: 21-verif_post_layout/.execstamp 21-verif_post_layout/.execstamp.execute-phony 21-verif_post_layout/.postconditions.stamp

.PHONY: 21

21: 21-verif_post_layout/.execstamp 21-verif_post_layout/.execstamp.execute-phony 21-verif_post_layout/.postconditions.stamp

# debug

define 21_debug_rule
	cd 21-verif_post_layout && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-verif_post_layout: 
	$(call 21_debug_rule)

.PHONY: debug-21

debug-21: debug-verif_post_layout

# ------------------------------------------------------------------------
# mentor-calibre-drc
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 22-mentor-calibre-drc/.prebuilt)","")
22-mentor-calibre-drc/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
22-mentor-calibre-drc/.stamp: 17-mentor-calibre-gdsmerge/.execstamp 17-mentor-calibre-gdsmerge/.postconditions.stamp 17-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
22-mentor-calibre-drc/.stamp:
	$(call cpdir-and-parameterize,22-mentor-calibre-drc,../steps/mentor-calibre-drc,22-mentor-calibre-drc/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 22-mentor-calibre-drc/.prebuilt)","")
22-mentor-calibre-drc/inputs/.stamp.adk: 22-mentor-calibre-drc/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,22-mentor-calibre-drc/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 22-mentor-calibre-drc/.prebuilt)","")
22-mentor-calibre-drc/inputs/.stamp.design_merged.gds: 22-mentor-calibre-drc/.stamp 17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,22-mentor-calibre-drc/inputs,design_merged.gds,../../17-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 22-mentor-calibre-drc/.prebuilt)","")

define 22_mentor_calibre_drc_commands_rule
	mkdir -p 22-mentor-calibre-drc/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-drc && chmod +x .mflowgen/22-mentor-calibre-drc/mflowgen-run && cp -f .mflowgen/22-mentor-calibre-drc/mflowgen-run 22-mentor-calibre-drc && if [[ -e .mflowgen/22-mentor-calibre-drc/mflowgen-debug ]]; then chmod +x .mflowgen/22-mentor-calibre-drc/mflowgen-debug && cp -f .mflowgen/22-mentor-calibre-drc/mflowgen-debug 22-mentor-calibre-drc; fi && if [[ -e .mflowgen/22-mentor-calibre-drc/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/22-mentor-calibre-drc/mflowgen-check-preconditions.py && cp -f .mflowgen/22-mentor-calibre-drc/mflowgen-check-preconditions.py 22-mentor-calibre-drc; fi && if [[ -e .mflowgen/22-mentor-calibre-drc/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/22-mentor-calibre-drc/mflowgen-check-postconditions.py && cp -f .mflowgen/22-mentor-calibre-drc/mflowgen-check-postconditions.py 22-mentor-calibre-drc; fi && cd 22-mentor-calibre-drc && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 22-mentor-calibre-drc/outputs/*
endef

22-mentor-calibre-drc/.execstamp: 22-mentor-calibre-drc/.stamp 22-mentor-calibre-drc/inputs/.stamp.adk 22-mentor-calibre-drc/inputs/.stamp.design_merged.gds
	$(call 22_mentor_calibre_drc_commands_rule)
	touch $@

22-mentor-calibre-drc/outputs/.execstamp.drc.results: 22-mentor-calibre-drc/.execstamp
	touch $@
22-mentor-calibre-drc/outputs/.execstamp.drc.summary: 22-mentor-calibre-drc/.execstamp
	touch $@

endif

# collect outputs

22-mentor-calibre-drc/outputs/.stamp.drc.results: 22-mentor-calibre-drc/.execstamp 22-mentor-calibre-drc/outputs/.execstamp.drc.results 22-mentor-calibre-drc/outputs/.execstamp.drc.summary
	$(call stamp,22-mentor-calibre-drc/outputs/.stamp.drc.results)

22-mentor-calibre-drc/outputs/.stamp.drc.summary: 22-mentor-calibre-drc/.execstamp 22-mentor-calibre-drc/outputs/.execstamp.drc.results 22-mentor-calibre-drc/outputs/.execstamp.drc.summary
	$(call stamp,22-mentor-calibre-drc/outputs/.stamp.drc.summary)

# post-conditions

define 22_mentor_calibre_drc_post_conditions_commands_rule
	cd 22-mentor-calibre-drc && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

22-mentor-calibre-drc/.postconditions.stamp: 22-mentor-calibre-drc/.execstamp 22-mentor-calibre-drc/outputs/.execstamp.drc.results 22-mentor-calibre-drc/outputs/.execstamp.drc.summary 22-mentor-calibre-drc/outputs/.stamp.drc.results 22-mentor-calibre-drc/outputs/.stamp.drc.summary
	$(call 22_mentor_calibre_drc_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-drc

mentor-calibre-drc: 22-mentor-calibre-drc/.execstamp 22-mentor-calibre-drc/.postconditions.stamp 22-mentor-calibre-drc/outputs/.execstamp.drc.results 22-mentor-calibre-drc/outputs/.execstamp.drc.summary 22-mentor-calibre-drc/outputs/.stamp.drc.results 22-mentor-calibre-drc/outputs/.stamp.drc.summary

.PHONY: 22

22: 22-mentor-calibre-drc/.execstamp 22-mentor-calibre-drc/.postconditions.stamp 22-mentor-calibre-drc/outputs/.execstamp.drc.results 22-mentor-calibre-drc/outputs/.execstamp.drc.summary 22-mentor-calibre-drc/outputs/.stamp.drc.results 22-mentor-calibre-drc/outputs/.stamp.drc.summary

# debug

define 22_debug_rule
	cd 22-mentor-calibre-drc && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-drc: 
	$(call 22_debug_rule)

.PHONY: debug-22

debug-22: debug-mentor-calibre-drc

# ------------------------------------------------------------------------
# mentor-calibre-lvs
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 23-mentor-calibre-lvs/.prebuilt)","")
23-mentor-calibre-lvs/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
23-mentor-calibre-lvs/.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
23-mentor-calibre-lvs/.stamp: 17-mentor-calibre-gdsmerge/.execstamp 17-mentor-calibre-gdsmerge/.postconditions.stamp 17-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
23-mentor-calibre-lvs/.stamp:
	$(call cpdir-and-parameterize,23-mentor-calibre-lvs,../steps/mentor-calibre-lvs,23-mentor-calibre-lvs/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 23-mentor-calibre-lvs/.prebuilt)","")
23-mentor-calibre-lvs/inputs/.stamp.adk: 23-mentor-calibre-lvs/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,23-mentor-calibre-lvs/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 23-mentor-calibre-lvs/.prebuilt)","")
23-mentor-calibre-lvs/inputs/.stamp.design.lvs.v: 23-mentor-calibre-lvs/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,23-mentor-calibre-lvs/inputs,design.lvs.v,../../16-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 23-mentor-calibre-lvs/.prebuilt)","")
23-mentor-calibre-lvs/inputs/.stamp.design_merged.gds: 23-mentor-calibre-lvs/.stamp 17-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,23-mentor-calibre-lvs/inputs,design_merged.gds,../../17-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 23-mentor-calibre-lvs/.prebuilt)","")

define 23_mentor_calibre_lvs_commands_rule
	mkdir -p 23-mentor-calibre-lvs/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-lvs && chmod +x .mflowgen/23-mentor-calibre-lvs/mflowgen-run && cp -f .mflowgen/23-mentor-calibre-lvs/mflowgen-run 23-mentor-calibre-lvs && if [[ -e .mflowgen/23-mentor-calibre-lvs/mflowgen-debug ]]; then chmod +x .mflowgen/23-mentor-calibre-lvs/mflowgen-debug && cp -f .mflowgen/23-mentor-calibre-lvs/mflowgen-debug 23-mentor-calibre-lvs; fi && if [[ -e .mflowgen/23-mentor-calibre-lvs/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/23-mentor-calibre-lvs/mflowgen-check-preconditions.py && cp -f .mflowgen/23-mentor-calibre-lvs/mflowgen-check-preconditions.py 23-mentor-calibre-lvs; fi && if [[ -e .mflowgen/23-mentor-calibre-lvs/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/23-mentor-calibre-lvs/mflowgen-check-postconditions.py && cp -f .mflowgen/23-mentor-calibre-lvs/mflowgen-check-postconditions.py 23-mentor-calibre-lvs; fi && cd 23-mentor-calibre-lvs && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 23-mentor-calibre-lvs/outputs/*
endef

23-mentor-calibre-lvs/.execstamp: 23-mentor-calibre-lvs/.stamp 23-mentor-calibre-lvs/inputs/.stamp.adk 23-mentor-calibre-lvs/inputs/.stamp.design.lvs.v 23-mentor-calibre-lvs/inputs/.stamp.design_merged.gds
	$(call 23_mentor_calibre_lvs_commands_rule)
	touch $@

23-mentor-calibre-lvs/outputs/.execstamp.lvs.report: 23-mentor-calibre-lvs/.execstamp
	touch $@
23-mentor-calibre-lvs/outputs/.execstamp.design.schematic.spi: 23-mentor-calibre-lvs/.execstamp
	touch $@
23-mentor-calibre-lvs/outputs/.execstamp.design_merged.lvs.v: 23-mentor-calibre-lvs/.execstamp
	touch $@

endif

# collect outputs

23-mentor-calibre-lvs/outputs/.stamp.lvs.report: 23-mentor-calibre-lvs/.execstamp 23-mentor-calibre-lvs/outputs/.execstamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.execstamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.execstamp.lvs.report
	$(call stamp,23-mentor-calibre-lvs/outputs/.stamp.lvs.report)

23-mentor-calibre-lvs/outputs/.stamp.design.schematic.spi: 23-mentor-calibre-lvs/.execstamp 23-mentor-calibre-lvs/outputs/.execstamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.execstamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.execstamp.lvs.report
	$(call stamp,23-mentor-calibre-lvs/outputs/.stamp.design.schematic.spi)

23-mentor-calibre-lvs/outputs/.stamp.design_merged.lvs.v: 23-mentor-calibre-lvs/.execstamp 23-mentor-calibre-lvs/outputs/.execstamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.execstamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.execstamp.lvs.report
	$(call stamp,23-mentor-calibre-lvs/outputs/.stamp.design_merged.lvs.v)

# post-conditions

define 23_mentor_calibre_lvs_post_conditions_commands_rule
	cd 23-mentor-calibre-lvs && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

23-mentor-calibre-lvs/.postconditions.stamp: 23-mentor-calibre-lvs/.execstamp 23-mentor-calibre-lvs/outputs/.execstamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.execstamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.execstamp.lvs.report 23-mentor-calibre-lvs/outputs/.stamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.stamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.stamp.lvs.report
	$(call 23_mentor_calibre_lvs_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-lvs

mentor-calibre-lvs: 23-mentor-calibre-lvs/.execstamp 23-mentor-calibre-lvs/.postconditions.stamp 23-mentor-calibre-lvs/outputs/.execstamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.execstamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.execstamp.lvs.report 23-mentor-calibre-lvs/outputs/.stamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.stamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.stamp.lvs.report

.PHONY: 23

23: 23-mentor-calibre-lvs/.execstamp 23-mentor-calibre-lvs/.postconditions.stamp 23-mentor-calibre-lvs/outputs/.execstamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.execstamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.execstamp.lvs.report 23-mentor-calibre-lvs/outputs/.stamp.design.schematic.spi 23-mentor-calibre-lvs/outputs/.stamp.design_merged.lvs.v 23-mentor-calibre-lvs/outputs/.stamp.lvs.report

# debug

define 23_debug_rule
	cd 23-mentor-calibre-lvs && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-lvs: 
	$(call 23_debug_rule)

.PHONY: debug-23

debug-23: debug-mentor-calibre-lvs

# ------------------------------------------------------------------------
# synopsys-pt-power
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 24-synopsys-pt-power/.prebuilt)","")
24-synopsys-pt-power/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
24-synopsys-pt-power/.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
24-synopsys-pt-power/.stamp: 20-synopsys-vcs-sim/.execstamp 20-synopsys-vcs-sim/.postconditions.stamp 20-synopsys-vcs-sim/outputs/.execstamp.run.vcd 20-synopsys-vcs-sim/outputs/.stamp.run.vcd
24-synopsys-pt-power/.stamp:
	$(call cpdir-and-parameterize,24-synopsys-pt-power,../steps/synopsys-pt-power,24-synopsys-pt-power/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 24-synopsys-pt-power/.prebuilt)","")
24-synopsys-pt-power/inputs/.stamp.adk: 24-synopsys-pt-power/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,24-synopsys-pt-power/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 24-synopsys-pt-power/.prebuilt)","")
24-synopsys-pt-power/inputs/.stamp.design.pt.sdc: 24-synopsys-pt-power/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,24-synopsys-pt-power/inputs,design.pt.sdc,../../16-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 24-synopsys-pt-power/.prebuilt)","")
24-synopsys-pt-power/inputs/.stamp.design.spef.gz: 24-synopsys-pt-power/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,24-synopsys-pt-power/inputs,design.spef.gz,../../16-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 24-synopsys-pt-power/.prebuilt)","")
24-synopsys-pt-power/inputs/.stamp.design.vcs.v: 24-synopsys-pt-power/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,24-synopsys-pt-power/inputs,design.vcs.v,../../16-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 24-synopsys-pt-power/.prebuilt)","")
24-synopsys-pt-power/inputs/.stamp.run.vcd: 24-synopsys-pt-power/.stamp 20-synopsys-vcs-sim/outputs/.stamp.run.vcd
	$(call symlink,24-synopsys-pt-power/inputs,run.vcd,../../20-synopsys-vcs-sim/outputs/run.vcd,.stamp.run.vcd)
endif

# execute

ifeq ("$(wildcard 24-synopsys-pt-power/.prebuilt)","")

define 24_synopsys_pt_power_commands_rule
	mkdir -p 24-synopsys-pt-power/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-pt-power && chmod +x .mflowgen/24-synopsys-pt-power/mflowgen-run && cp -f .mflowgen/24-synopsys-pt-power/mflowgen-run 24-synopsys-pt-power && if [[ -e .mflowgen/24-synopsys-pt-power/mflowgen-debug ]]; then chmod +x .mflowgen/24-synopsys-pt-power/mflowgen-debug && cp -f .mflowgen/24-synopsys-pt-power/mflowgen-debug 24-synopsys-pt-power; fi && if [[ -e .mflowgen/24-synopsys-pt-power/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/24-synopsys-pt-power/mflowgen-check-preconditions.py && cp -f .mflowgen/24-synopsys-pt-power/mflowgen-check-preconditions.py 24-synopsys-pt-power; fi && if [[ -e .mflowgen/24-synopsys-pt-power/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/24-synopsys-pt-power/mflowgen-check-postconditions.py && cp -f .mflowgen/24-synopsys-pt-power/mflowgen-check-postconditions.py 24-synopsys-pt-power; fi && cd 24-synopsys-pt-power && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 24-synopsys-pt-power/outputs/*
endef

24-synopsys-pt-power/.execstamp: 24-synopsys-pt-power/.stamp 24-synopsys-pt-power/inputs/.stamp.adk 24-synopsys-pt-power/inputs/.stamp.design.pt.sdc 24-synopsys-pt-power/inputs/.stamp.design.spef.gz 24-synopsys-pt-power/inputs/.stamp.design.vcs.v 24-synopsys-pt-power/inputs/.stamp.run.vcd
	$(call 24_synopsys_pt_power_commands_rule)
	touch $@

24-synopsys-pt-power/outputs/.execstamp.primetime.session: 24-synopsys-pt-power/.execstamp
	touch $@
24-synopsys-pt-power/outputs/.execstamp.design.sdf: 24-synopsys-pt-power/.execstamp
	touch $@

endif

# collect outputs

24-synopsys-pt-power/outputs/.stamp.primetime.session: 24-synopsys-pt-power/.execstamp 24-synopsys-pt-power/outputs/.execstamp.design.sdf 24-synopsys-pt-power/outputs/.execstamp.primetime.session
	$(call stamp,24-synopsys-pt-power/outputs/.stamp.primetime.session)

24-synopsys-pt-power/outputs/.stamp.design.sdf: 24-synopsys-pt-power/.execstamp 24-synopsys-pt-power/outputs/.execstamp.design.sdf 24-synopsys-pt-power/outputs/.execstamp.primetime.session
	$(call stamp,24-synopsys-pt-power/outputs/.stamp.design.sdf)

# post-conditions

define 24_synopsys_pt_power_post_conditions_commands_rule
	cd 24-synopsys-pt-power && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

24-synopsys-pt-power/.postconditions.stamp: 24-synopsys-pt-power/.execstamp 24-synopsys-pt-power/outputs/.execstamp.design.sdf 24-synopsys-pt-power/outputs/.execstamp.primetime.session 24-synopsys-pt-power/outputs/.stamp.design.sdf 24-synopsys-pt-power/outputs/.stamp.primetime.session
	$(call 24_synopsys_pt_power_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-pt-power

synopsys-pt-power: 24-synopsys-pt-power/.execstamp 24-synopsys-pt-power/.postconditions.stamp 24-synopsys-pt-power/outputs/.execstamp.design.sdf 24-synopsys-pt-power/outputs/.execstamp.primetime.session 24-synopsys-pt-power/outputs/.stamp.design.sdf 24-synopsys-pt-power/outputs/.stamp.primetime.session

.PHONY: 24

24: 24-synopsys-pt-power/.execstamp 24-synopsys-pt-power/.postconditions.stamp 24-synopsys-pt-power/outputs/.execstamp.design.sdf 24-synopsys-pt-power/outputs/.execstamp.primetime.session 24-synopsys-pt-power/outputs/.stamp.design.sdf 24-synopsys-pt-power/outputs/.stamp.primetime.session

# debug

define 24_debug_rule
	cd 24-synopsys-pt-power && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-synopsys-pt-power: 
	$(call 24_debug_rule)

.PHONY: debug-24

debug-24: debug-synopsys-pt-power

# ------------------------------------------------------------------------
# cadence-innovus-debug-calibre
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 25-cadence-innovus-debug-calibre/.prebuilt)","")
25-cadence-innovus-debug-calibre/.stamp: 0-asap-7-adk/.execstamp 0-asap-7-adk/.postconditions.stamp 0-asap-7-adk/outputs/.execstamp.adk 0-asap-7-adk/outputs/.stamp.adk
25-cadence-innovus-debug-calibre/.stamp: 16-cadence-innovus-signoff/.execstamp 16-cadence-innovus-signoff/.postconditions.stamp 16-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.lef 16-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.sdf 16-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 16-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 16-cadence-innovus-signoff/outputs/.stamp.design.def.gz 16-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 16-cadence-innovus-signoff/outputs/.stamp.design.lef 16-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 16-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 16-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.sdf 16-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 16-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 16-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
25-cadence-innovus-debug-calibre/.stamp: 22-mentor-calibre-drc/.execstamp 22-mentor-calibre-drc/.postconditions.stamp 22-mentor-calibre-drc/outputs/.execstamp.drc.results 22-mentor-calibre-drc/outputs/.execstamp.drc.summary 22-mentor-calibre-drc/outputs/.stamp.drc.results 22-mentor-calibre-drc/outputs/.stamp.drc.summary
25-cadence-innovus-debug-calibre/.stamp: 6-cadence-innovus-flowsetup/.execstamp 6-cadence-innovus-flowsetup/.postconditions.stamp 6-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
25-cadence-innovus-debug-calibre/.stamp:
	$(call cpdir-and-parameterize,25-cadence-innovus-debug-calibre,../steps/cadence-innovus-debug-calibre,25-cadence-innovus-debug-calibre/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 25-cadence-innovus-debug-calibre/.prebuilt)","")
25-cadence-innovus-debug-calibre/inputs/.stamp.adk: 25-cadence-innovus-debug-calibre/.stamp 0-asap-7-adk/outputs/.stamp.adk
	$(call symlink,25-cadence-innovus-debug-calibre/inputs,adk,../../0-asap-7-adk/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 25-cadence-innovus-debug-calibre/.prebuilt)","")
25-cadence-innovus-debug-calibre/inputs/.stamp.design.checkpoint: 25-cadence-innovus-debug-calibre/.stamp 16-cadence-innovus-signoff/outputs/.stamp.design.checkpoint
	$(call symlink,25-cadence-innovus-debug-calibre/inputs,design.checkpoint,../../16-cadence-innovus-signoff/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 25-cadence-innovus-debug-calibre/.prebuilt)","")
25-cadence-innovus-debug-calibre/inputs/.stamp.drc.results: 25-cadence-innovus-debug-calibre/.stamp 22-mentor-calibre-drc/outputs/.stamp.drc.results
	$(call symlink,25-cadence-innovus-debug-calibre/inputs,drc.results,../../22-mentor-calibre-drc/outputs/drc.results,.stamp.drc.results)
endif

ifeq ("$(wildcard 25-cadence-innovus-debug-calibre/.prebuilt)","")
25-cadence-innovus-debug-calibre/inputs/.stamp.innovus-foundation-flow: 25-cadence-innovus-debug-calibre/.stamp 6-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,25-cadence-innovus-debug-calibre/inputs,innovus-foundation-flow,../../6-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 25-cadence-innovus-debug-calibre/.prebuilt)","")

define 25_cadence_innovus_debug_calibre_commands_rule
	mkdir -p 25-cadence-innovus-debug-calibre/outputs && set -o pipefail && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-debug-calibre && chmod +x .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-run && cp -f .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-run 25-cadence-innovus-debug-calibre && if [[ -e .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-debug ]]; then chmod +x .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-debug && cp -f .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-debug 25-cadence-innovus-debug-calibre; fi && if [[ -e .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-check-preconditions.py && cp -f .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-check-preconditions.py 25-cadence-innovus-debug-calibre; fi && if [[ -e .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-check-postconditions.py && cp -f .mflowgen/25-cadence-innovus-debug-calibre/mflowgen-check-postconditions.py 25-cadence-innovus-debug-calibre; fi && cd 25-cadence-innovus-debug-calibre && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 25-cadence-innovus-debug-calibre/outputs/*
endef

25-cadence-innovus-debug-calibre/.execstamp: 25-cadence-innovus-debug-calibre/.stamp 25-cadence-innovus-debug-calibre/inputs/.stamp.adk 25-cadence-innovus-debug-calibre/inputs/.stamp.design.checkpoint 25-cadence-innovus-debug-calibre/inputs/.stamp.drc.results 25-cadence-innovus-debug-calibre/inputs/.stamp.innovus-foundation-flow
	$(call 25_cadence_innovus_debug_calibre_commands_rule)

25-cadence-innovus-debug-calibre/.execstamp.execute-phony: 25-cadence-innovus-debug-calibre/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 25_cadence_innovus_debug_calibre_post_conditions_commands_rule
	cd 25-cadence-innovus-debug-calibre && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

25-cadence-innovus-debug-calibre/.postconditions.stamp: 25-cadence-innovus-debug-calibre/.execstamp 25-cadence-innovus-debug-calibre/.execstamp.execute-phony
	$(call 25_cadence_innovus_debug_calibre_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-debug-calibre

cadence-innovus-debug-calibre: 25-cadence-innovus-debug-calibre/.execstamp 25-cadence-innovus-debug-calibre/.execstamp.execute-phony 25-cadence-innovus-debug-calibre/.postconditions.stamp

.PHONY: 25

25: 25-cadence-innovus-debug-calibre/.execstamp 25-cadence-innovus-debug-calibre/.execstamp.execute-phony 25-cadence-innovus-debug-calibre/.postconditions.stamp

# debug

# ------------------------------------------------------------------------
# Misc
# ------------------------------------------------------------------------

# Clean

.PHONY: clean-all

clean-all:
	@find . -maxdepth 1 ! -name Makefile ! -name .mflowgen\* ! -name \. ! -name \.\. -exec rm -rf {} +

.PHONY: clean-0

clean-0:
	rm -rf ./0-asap-7-adk

.PHONY: clean-asap-7-adk

clean-asap-7-adk: clean-0

.PHONY: clean-1

clean-1:
	rm -rf ./1-constraints

.PHONY: clean-constraints

clean-constraints: clean-1

.PHONY: clean-10

clean-10:
	rm -rf ./10-cadence-innovus-place

.PHONY: clean-cadence-innovus-place

clean-cadence-innovus-place: clean-10

.PHONY: clean-11

clean-11:
	rm -rf ./11-cadence-innovus-cts

.PHONY: clean-cadence-innovus-cts

clean-cadence-innovus-cts: clean-11

.PHONY: clean-12

clean-12:
	rm -rf ./12-cadence-innovus-postcts_hold

.PHONY: clean-cadence-innovus-postcts_hold

clean-cadence-innovus-postcts_hold: clean-12

.PHONY: clean-13

clean-13:
	rm -rf ./13-cadence-innovus-route

.PHONY: clean-cadence-innovus-route

clean-cadence-innovus-route: clean-13

.PHONY: clean-14

clean-14:
	rm -rf ./14-cadence-innovus-postroute

.PHONY: clean-cadence-innovus-postroute

clean-cadence-innovus-postroute: clean-14

.PHONY: clean-15

clean-15:
	rm -rf ./15-cadence-innovus-postroute_hold

.PHONY: clean-cadence-innovus-postroute_hold

clean-cadence-innovus-postroute_hold: clean-15

.PHONY: clean-16

clean-16:
	rm -rf ./16-cadence-innovus-signoff

.PHONY: clean-cadence-innovus-signoff

clean-cadence-innovus-signoff: clean-16

.PHONY: clean-17

clean-17:
	rm -rf ./17-mentor-calibre-gdsmerge

.PHONY: clean-mentor-calibre-gdsmerge

clean-mentor-calibre-gdsmerge: clean-17

.PHONY: clean-18

clean-18:
	rm -rf ./18-synopsys-pt-timing-signoff

.PHONY: clean-synopsys-pt-timing-signoff

clean-synopsys-pt-timing-signoff: clean-18

.PHONY: clean-19

clean-19:
	rm -rf ./19-synopsys-ptpx-genlibdb

.PHONY: clean-synopsys-ptpx-genlibdb

clean-synopsys-ptpx-genlibdb: clean-19

.PHONY: clean-2

clean-2:
	rm -rf ./2-info

.PHONY: clean-info

clean-info: clean-2

.PHONY: clean-20

clean-20:
	rm -rf ./20-synopsys-vcs-sim

.PHONY: clean-synopsys-vcs-sim

clean-synopsys-vcs-sim: clean-20

.PHONY: clean-21

clean-21:
	rm -rf ./21-verif_post_layout

.PHONY: clean-verif_post_layout

clean-verif_post_layout: clean-21

.PHONY: clean-22

clean-22:
	rm -rf ./22-mentor-calibre-drc

.PHONY: clean-mentor-calibre-drc

clean-mentor-calibre-drc: clean-22

.PHONY: clean-23

clean-23:
	rm -rf ./23-mentor-calibre-lvs

.PHONY: clean-mentor-calibre-lvs

clean-mentor-calibre-lvs: clean-23

.PHONY: clean-24

clean-24:
	rm -rf ./24-synopsys-pt-power

.PHONY: clean-synopsys-pt-power

clean-synopsys-pt-power: clean-24

.PHONY: clean-25

clean-25:
	rm -rf ./25-cadence-innovus-debug-calibre

.PHONY: clean-cadence-innovus-debug-calibre

clean-cadence-innovus-debug-calibre: clean-25

.PHONY: clean-3

clean-3:
	rm -rf ./3-rtl

.PHONY: clean-rtl

clean-rtl: clean-3

.PHONY: clean-4

clean-4:
	rm -rf ./4-testbench

.PHONY: clean-testbench

clean-testbench: clean-4

.PHONY: clean-5

clean-5:
	rm -rf ./5-cadence-genus-synthesis

.PHONY: clean-cadence-genus-synthesis

clean-cadence-genus-synthesis: clean-5

.PHONY: clean-6

clean-6:
	rm -rf ./6-cadence-innovus-flowsetup

.PHONY: clean-cadence-innovus-flowsetup

clean-cadence-innovus-flowsetup: clean-6

.PHONY: clean-7

clean-7:
	rm -rf ./7-verif_post_synth

.PHONY: clean-verif_post_synth

clean-verif_post_synth: clean-7

.PHONY: clean-8

clean-8:
	rm -rf ./8-cadence-innovus-init

.PHONY: clean-cadence-innovus-init

clean-cadence-innovus-init: clean-8

.PHONY: clean-9

clean-9:
	rm -rf ./9-cadence-innovus-power

.PHONY: clean-cadence-innovus-power

clean-cadence-innovus-power: clean-9

# Diff

.PHONY: diff-0

diff-0:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../adks/asap7 0-asap-7-adk | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../adks/asap7.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 0-asap-7-adk.*' && echo || true

.PHONY: diff-1

diff-1:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/constraints 1-constraints | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/constraints.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 1-constraints.*' && echo || true

.PHONY: diff-2

diff-2:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/info 2-info | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/info.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 2-info.*' && echo || true

.PHONY: diff-3

diff-3:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} matrix_mult_2x2x1/rtl 3-rtl | grep --color=always -e '^-.*' -e '$$' -e 'Only in matrix_mult_2x2x1/rtl.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 3-rtl.*' && echo || true

.PHONY: diff-4

diff-4:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} matrix_mult_2x2x1/testbench 4-testbench | grep --color=always -e '^-.*' -e '$$' -e 'Only in matrix_mult_2x2x1/testbench.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 4-testbench.*' && echo || true

.PHONY: diff-5

diff-5:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-genus-synthesis 5-cadence-genus-synthesis | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-genus-synthesis.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 5-cadence-genus-synthesis.*' && echo || true

.PHONY: diff-6

diff-6:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-flowsetup 6-cadence-innovus-flowsetup | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-flowsetup.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 6-cadence-innovus-flowsetup.*' && echo || true

.PHONY: diff-7

diff-7:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/synopsys-formality-verification 7-verif_post_synth | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/synopsys-formality-verification.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 7-verif_post_synth.*' && echo || true

.PHONY: diff-8

diff-8:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-init 8-cadence-innovus-init | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-init.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 8-cadence-innovus-init.*' && echo || true

.PHONY: diff-9

diff-9:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-power 9-cadence-innovus-power | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-power.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 9-cadence-innovus-power.*' && echo || true

.PHONY: diff-10

diff-10:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-place 10-cadence-innovus-place | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-place.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 10-cadence-innovus-place.*' && echo || true

.PHONY: diff-11

diff-11:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-cts 11-cadence-innovus-cts | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-cts.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 11-cadence-innovus-cts.*' && echo || true

.PHONY: diff-12

diff-12:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-postcts_hold 12-cadence-innovus-postcts_hold | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-postcts_hold.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 12-cadence-innovus-postcts_hold.*' && echo || true

.PHONY: diff-13

diff-13:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-route 13-cadence-innovus-route | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-route.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 13-cadence-innovus-route.*' && echo || true

.PHONY: diff-14

diff-14:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-postroute 14-cadence-innovus-postroute | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-postroute.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 14-cadence-innovus-postroute.*' && echo || true

.PHONY: diff-15

diff-15:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-postroute_hold 15-cadence-innovus-postroute_hold | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-postroute_hold.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 15-cadence-innovus-postroute_hold.*' && echo || true

.PHONY: diff-16

diff-16:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-signoff 16-cadence-innovus-signoff | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-signoff.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 16-cadence-innovus-signoff.*' && echo || true

.PHONY: diff-17

diff-17:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/mentor-calibre-gdsmerge 17-mentor-calibre-gdsmerge | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/mentor-calibre-gdsmerge.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 17-mentor-calibre-gdsmerge.*' && echo || true

.PHONY: diff-18

diff-18:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/synopsys-pt-timing-signoff 18-synopsys-pt-timing-signoff | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/synopsys-pt-timing-signoff.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 18-synopsys-pt-timing-signoff.*' && echo || true

.PHONY: diff-19

diff-19:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/synopsys-ptpx-genlibdb 19-synopsys-ptpx-genlibdb | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/synopsys-ptpx-genlibdb.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 19-synopsys-ptpx-genlibdb.*' && echo || true

.PHONY: diff-20

diff-20:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/synopsys-vcs-sim 20-synopsys-vcs-sim | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/synopsys-vcs-sim.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 20-synopsys-vcs-sim.*' && echo || true

.PHONY: diff-21

diff-21:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/synopsys-formality-verification 21-verif_post_layout | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/synopsys-formality-verification.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 21-verif_post_layout.*' && echo || true

.PHONY: diff-22

diff-22:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/mentor-calibre-drc 22-mentor-calibre-drc | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/mentor-calibre-drc.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 22-mentor-calibre-drc.*' && echo || true

.PHONY: diff-23

diff-23:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/mentor-calibre-lvs 23-mentor-calibre-lvs | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/mentor-calibre-lvs.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 23-mentor-calibre-lvs.*' && echo || true

.PHONY: diff-24

diff-24:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/synopsys-pt-power 24-synopsys-pt-power | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/synopsys-pt-power.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 24-synopsys-pt-power.*' && echo || true

.PHONY: diff-25

diff-25:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../steps/cadence-innovus-debug-calibre 25-cadence-innovus-debug-calibre | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../steps/cadence-innovus-debug-calibre.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 25-cadence-innovus-debug-calibre.*' && echo || true

# Info

.PHONY: info-0

info-0:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t asap-7-adk && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/0-asap-7-adk/configure.yml

.PHONY: info-1

info-1:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t constraints && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/1-constraints/configure.yml

.PHONY: info-2

info-2:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/2-info/configure.yml

.PHONY: info-3

info-3:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t rtl && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/3-rtl/configure.yml

.PHONY: info-4

info-4:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t testbench && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/4-testbench/configure.yml

.PHONY: info-5

info-5:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-genus-synthesis && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/5-cadence-genus-synthesis/configure.yml

.PHONY: info-6

info-6:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/6-cadence-innovus-flowsetup/configure.yml

.PHONY: info-7

info-7:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t verif_post_synth && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/7-verif_post_synth/configure.yml

.PHONY: info-8

info-8:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/8-cadence-innovus-init/configure.yml

.PHONY: info-9

info-9:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-power && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/9-cadence-innovus-power/configure.yml

.PHONY: info-10

info-10:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-place && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/10-cadence-innovus-place/configure.yml

.PHONY: info-11

info-11:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-cts && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/11-cadence-innovus-cts/configure.yml

.PHONY: info-12

info-12:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postcts_hold && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/12-cadence-innovus-postcts_hold/configure.yml

.PHONY: info-13

info-13:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-route && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/13-cadence-innovus-route/configure.yml

.PHONY: info-14

info-14:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postroute && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/14-cadence-innovus-postroute/configure.yml

.PHONY: info-15

info-15:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postroute_hold && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/15-cadence-innovus-postroute_hold/configure.yml

.PHONY: info-16

info-16:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/16-cadence-innovus-signoff/configure.yml

.PHONY: info-17

info-17:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/17-mentor-calibre-gdsmerge/configure.yml

.PHONY: info-18

info-18:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-pt-timing-signoff && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/18-synopsys-pt-timing-signoff/configure.yml

.PHONY: info-19

info-19:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-genlibdb && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/19-synopsys-ptpx-genlibdb/configure.yml

.PHONY: info-20

info-20:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-vcs-sim && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/20-synopsys-vcs-sim/configure.yml

.PHONY: info-21

info-21:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t verif_post_layout && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/21-verif_post_layout/configure.yml

.PHONY: info-22

info-22:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-drc && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/22-mentor-calibre-drc/configure.yml

.PHONY: info-23

info-23:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-lvs && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/23-mentor-calibre-lvs/configure.yml

.PHONY: info-24

info-24:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-pt-power && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/24-synopsys-pt-power/configure.yml

.PHONY: info-25

info-25:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-debug-calibre && /afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/25-cadence-innovus-debug-calibre/configure.yml

# Runtimes

.PHONY: runtimes

runtimes:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-runtimes

# List

.PHONY: list

list:
	@echo && echo Generic Targets: && echo && printf " - %s\\n" "list      -- List all steps" "status    -- Print build status for each step" "runtimes  -- Print runtimes for each step" "graph     -- Generate a PDF of the step dependency graph" "clean-all -- Remove all build directories" "clean-N   -- Clean target N" "info-N    -- Print configured info for step N" "diff-N    -- Diff target N" && echo && echo Targets: && echo && printf " - %s\\n" "  0 : asap-7-adk" "  1 : constraints" "  2 : info" "  3 : rtl" "  4 : testbench" "  5 : cadence-genus-synthesis" "  6 : cadence-innovus-flowsetup" "  7 : verif_post_synth" "  8 : cadence-innovus-init" "  9 : cadence-innovus-power" " 10 : cadence-innovus-place" " 11 : cadence-innovus-cts" " 12 : cadence-innovus-postcts_hold" " 13 : cadence-innovus-route" " 14 : cadence-innovus-postroute" " 15 : cadence-innovus-postroute_hold" " 16 : cadence-innovus-signoff" " 17 : mentor-calibre-gdsmerge" " 18 : synopsys-pt-timing-signoff" " 19 : synopsys-ptpx-genlibdb" " 20 : synopsys-vcs-sim" " 21 : verif_post_layout" " 22 : mentor-calibre-drc" " 23 : mentor-calibre-lvs" " 24 : synopsys-pt-power" " 25 : cadence-innovus-debug-calibre" && echo && echo Debug Targets: && echo && printf " - %s\\n" "debug-5  : debug-cadence-genus-synthesis" "debug-7  : debug-verif_post_synth" "debug-8  : debug-cadence-innovus-init" "debug-9  : debug-cadence-innovus-power" "debug-10 : debug-cadence-innovus-place" "debug-11 : debug-cadence-innovus-cts" "debug-12 : debug-cadence-innovus-postcts_hold" "debug-13 : debug-cadence-innovus-route" "debug-14 : debug-cadence-innovus-postroute" "debug-15 : debug-cadence-innovus-postroute_hold" "debug-16 : debug-cadence-innovus-signoff" "debug-17 : debug-mentor-calibre-gdsmerge" "debug-21 : debug-verif_post_layout" "debug-22 : debug-mentor-calibre-drc" "debug-23 : debug-mentor-calibre-lvs" "debug-24 : debug-synopsys-pt-power" && echo

# Graph

.PHONY: graph

graph:
	dot -Tpdf .mflowgen/graph.dot > graph.pdf

# Status

.PHONY: status

status:
	@/afs/ece.cmu.edu/usr/edubbers/private/research_work/my_mflowgen/mflowgen/mflowgen/scripts/mflowgen-status --backend make -s 0-asap-7-adk,1-constraints,2-info,3-rtl,4-testbench,5-cadence-genus-synthesis,6-cadence-innovus-flowsetup,7-verif_post_synth,8-cadence-innovus-init,9-cadence-innovus-power,10-cadence-innovus-place,11-cadence-innovus-cts,12-cadence-innovus-postcts_hold,13-cadence-innovus-route,14-cadence-innovus-postroute,15-cadence-innovus-postroute_hold,16-cadence-innovus-signoff,17-mentor-calibre-gdsmerge,18-synopsys-pt-timing-signoff,19-synopsys-ptpx-genlibdb,20-synopsys-vcs-sim,21-verif_post_layout,22-mentor-calibre-drc,23-mentor-calibre-lvs,24-synopsys-pt-power,25-cadence-innovus-debug-calibre

