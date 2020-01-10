# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# this Makefile is generated by `tlgen.py` tool

# DV_DIR in xbar is deeper than the other IPs, tune the DV_DIR for Makefile/.mk in dv/tools
CURRENT_DIR     := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
DV_DIR          := ${'$'}{CURRENT_DIR}/../../
export DUT_TOP  := xbar_${xbar.name}
FUSESOC_CORE    := lowrisc:dv:xbar_${xbar.name}_sim:0.1

# default COV_COMMON_EXCL isn't applicable to xbar, use its own el file
COV_COMMON_EXCL  = ${'$'}{CURRENT_DIR}/../cov/xbar_cov_excl.el

include ${'$'}{DV_DIR}/../../../ip/tlul/generic_dv/xbar.mk