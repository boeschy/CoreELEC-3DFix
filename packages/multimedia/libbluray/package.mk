# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libbluray"
PKG_VERSION="1.5.1"
PKG_SHA256="ee46f99adc591d18a9485b404cb04be6ba6fcde5bd45590ea94d0c1432d448c9"
PKG_LICENSE="LGPL-2.1-or-later"
PKG_SITE="https://www.videolan.org/developers/libbluray.html"
PKG_URL="https://code.videolan.org/videolan/libbluray/-/archive/${PKG_VERSION}/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain fontconfig freetype libxml2 libudfread"
PKG_LONGDESC="libbluray is an open-source library designed for Blu-Ray Discs playback for media players."

if [ "${BLURAY_AACS_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" libaacs"
fi

if [ "${BLURAY_BDPLUS_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" libbdplus"
fi

PKG_MESON_OPTS_TARGET="-Ddefault_library=shared \
                       -Denable_docs=false \
                       -Denable_tools=false \
                       -Denable_devtools=false \
                       -Denable_examples=false \
                       -Dbdj_jar=disabled \
                       -Dembed_udfread=true \
                       -Dfontconfig=enabled \
                       -Dfreetype=enabled \
                       -Dlibxml2=enabled"
