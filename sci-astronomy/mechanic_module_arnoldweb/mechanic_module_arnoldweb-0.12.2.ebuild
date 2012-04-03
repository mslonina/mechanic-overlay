# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="The Arnoldweb module for Mechanic"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="https://github.com/mslonina/MechanicModules/tarball/${PV} -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x64-macos ~amd64 ~x86"
IUSE="config"

DEPEND="
  sci-misc/mechanic:0
  virtual/mpi
  config? ( dev-libs/libreadconfig[hdf5] )
"
RDEPEND=${DEPEND}

S="${WORKDIR}/${P}/${PN}"

pkg_setup() {
  export CC=mpicc
}

src_unpack() {
  unpack ${A}
  mv mslonina-MechanicModules-* ${P} || die
}

src_configure() {
  local mycmakeargs=(
    $(cmake-utils_use config LRC)
  )
  cmake-utils_src_configure
}


