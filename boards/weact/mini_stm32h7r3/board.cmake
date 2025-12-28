# Copyright (c) 2025 Michal Piekos
# SPDX-License-Identifier: Apache-2.0

# keep first
board_runner_args(blackmagicprobe "--gdb-serial=/dev/ttyACM0")
# board_runner_args(jlink "--device=STM32H7R3VI" "--speed=4000")

# keep first
include(${ZEPHYR_BASE}/boards/common/blackmagicprobe.board.cmake)
# include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)

