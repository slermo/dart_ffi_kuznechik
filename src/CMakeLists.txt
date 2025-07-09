# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(ffi_kuznechik_library VERSION 0.0.1 LANGUAGES C)

add_library(ffi_kuznechik SHARED
  "ffi_kuznechik.c"
)

set_target_properties(ffi_kuznechik PROPERTIES
  PUBLIC_HEADER ffi_kuznechik.h
  OUTPUT_NAME "ffi_kuznechik"
)

target_compile_definitions(ffi_kuznechik PUBLIC DART_SHARED_LIB)
