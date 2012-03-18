# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="Library for reading and writing configuration files with HDF5 support"
HOMEPAGE="http://git.astri.umk.pl/project/libreadconfig"
SRC_URI="http://github.com/downloads/mslonina/Mechanic/libreadconfig-0.12.0-src.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="**"
IUSE=""

RDEPEND="
  sci-libs/hdf5
"

src_prepare() {
  base_src_prepare
}

src_configure() {
  local mycmakeargs=(
    -DBUILD_HDF5:BOOL=ON
  )
  cmake-utils_src_configure
}

src_install() {
  cmake-utils_src_install
}


