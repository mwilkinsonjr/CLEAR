# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

set ::env(DESIGN_NAME) left_tile
set ::env(DIE_AREA) "0 0 135 285"
set ::env(PL_TARGET_DENSITY) 0.42

source $::env(DESIGN_DIR)/../tiles_base_config.tcl

set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/$::env(DESIGN_NAME).v"

set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.05