# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.20.0)
find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(http_client)

FILE(GLOB app_sources src/*.c)
target_sources(app PRIVATE ${app_sources})

zephyr_linker_sources(SECTIONS sections-rom.ld)
zephyr_iterable_section(NAME http_resource_desc_test_http_service KVMA
			RAM_REGION GROUP RODATA_REGION)
