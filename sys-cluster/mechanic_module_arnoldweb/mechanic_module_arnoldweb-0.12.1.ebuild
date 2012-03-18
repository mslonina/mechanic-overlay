# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="The Arnoldweb module for Mechanic"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="http://github.com/downloads/mslonina/Mechanic/mechanic_module_arnoldweb-0.12.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="config"

RDEPEND="
  sys-cluster/mechanic
"

pkg_setup() {
  export CC=mpicc
}

src_prepare() {
  base_src_prepare
}

src_configure() {
  if use config; then
    local mycmakeargs=(
      -DLRC:BOOL=ON
    )
  else
    local mycmakeargs=(
      -DLRC:BOOL=OFF
    )
  fi
  cmake-utils_src_configure
}

src_install() {
  cmake-utils_src_install
}


