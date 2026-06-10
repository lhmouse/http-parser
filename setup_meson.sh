#!/bin/bash -e

meson setup  \
  -Ddebug=true -Doptimization=0  \
  -Db_sanitize=address,undefined  \
  build_debug

meson setup  \
  -Ddebug=true -Doptimization=3  \
  build_release
