#!/bin/bash

source ../../setenv_external.sh

./configure $STEAMLINK_CONFIGURE_OPTS

steamlink_make_clean
steamlink_make
export STRIPPROG=armv7a-cros-linux-gnueabi-strip
make DESTDIR=$MARVELL_ROOTFS STRIP_OPT="-s --strip-program=${STRIPPROG}" install
