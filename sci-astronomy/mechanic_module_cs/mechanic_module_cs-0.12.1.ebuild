# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="The CS module for Mechanic"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="https://github.com/downloads/mslonina/MechanicModules/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
  sci-misc/mechanic[fortran]
  virtual/mpi[fortran]
"
RDEPEND=${DEPEND}

pkg_setup() {
  export CC=mpicc
  export FC=mpif90
}

