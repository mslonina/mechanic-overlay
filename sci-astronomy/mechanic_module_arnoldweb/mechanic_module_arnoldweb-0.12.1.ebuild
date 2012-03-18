# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="The Arnoldweb module for Mechanic"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="https://github.com/downloads/mslonina/MechanicModules/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="lrc"

DEPEND="
  sci-misc/mechanic
"
RDEPEND=${DEPEND}

pkg_setup() {
  export CC=mpicc
}

src_configure() {
  local mycmakeargs=(
    $(cmake-utils_use_build lrc)
  )
  cmake-utils_src_configure
}


