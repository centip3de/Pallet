#!/bin/bash
if [ "$CONFIGURATION" = "Debug-InstallMacPorts" ]; then
 say "Building MacPorts"
 PREFIX=$BUILT_PRODUCTS_DIR/macports-1.8

  cd $PROJECT_DIR/../base

  PATH=/bin:/sbin:/usr/bin:/usr/sbin \
  ./configure \
 --prefix=$PREFIX \
 --with-tclpackage=$PREFIX/Library/Tcl \
  --with-no-root-privileges

  make

 make install

  make clean
  $PREFIX/bin/port selfupdate
  say "done"

fi
