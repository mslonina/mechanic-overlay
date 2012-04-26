# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="MPI task management system"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="http://github.com/mslonina/Mechanic/tarball/${PV} -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x64-macos ~amd64 ~x86"
IUSE="fortran"

DEPEND=">=dev-libs/libreadconfig-0.12.4[hdf5]
	fortran? ( virtual/fortran )
	virtual/mpi[fortran?]
  sci-libs/hdf5"
RDEPEND="${DEPEND}"

pkg_setup() {
	export CC=mpicc
	use fortran && export FC=mpif90
}

src_unpack() {
  unpack ${A}
  mv mslonina-Mechanic-* ${P} || die
}

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_build fortran)
	)
	cmake-utils_src_configure
}
