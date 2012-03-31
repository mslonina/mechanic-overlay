# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="The CS module for Mechanic"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="${P}.tar.gz"
RESTRICT="fetch"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
  sci-misc/mechanic[fortran]
  virtual/mpi[fortran]
"
RDEPEND=${DEPEND}

pkg_nofetch() {
  einfo "To get a copy of the CS-module please send an email to:"
  einfo "  mechanics@astri.umk.pl"
  einfo "and place the ${P}.tar.gz in ${DISTDIR}"
}

pkg_setup() {
  export CC=mpicc
  export FC=mpif90
}

