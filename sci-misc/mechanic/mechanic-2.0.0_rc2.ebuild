# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="MPI task management system"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="http://github.com/mslonina/Mechanic/tarball/${PV} -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="2"
KEYWORDS="~x64-macos ~amd64 ~x86"

DEPEND=">=dev-libs/libreadconfig-0.12.4[hdf5]
	virtual/mpi
  sci-libs/hdf5"
RDEPEND="${DEPEND}"

pkg_setup() {
	export CC=mpicc
}

src_unpack() {
  unpack ${A}
  mv mslonina-Mechanic-* ${P} || die
}

src_configure() {
	cmake-utils_src_configure
}
