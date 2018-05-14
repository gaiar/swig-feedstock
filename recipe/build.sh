#!/bin/bash

export CFLAGS="-march=native -mtune=native"
export CXXFLAGS="-march=native -mtune=native"


./configure \
             --prefix="${PREFIX}" \
             --with-pcre-prefix="${PREFIX}" \
             --with-boost="${PREFIX}" \
             --with-tcl="${PREFIX}" \
             --with-tclconfig="${PREFIX}/lib" \
             --without-alllang
make -j${CPU_COUNT}
#make check
make install
