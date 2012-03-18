# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="MPI task management system"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="http://github.com/downloads/mslonina/Mechanic/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="fortran"

DEPEND="dev-libs/libreadconfig[hdf5]
	fortran? ( virtual/fortran )
	virtual/mpi[fortran?]"
RDEPEND="${DEPEND}"

pkg_setup() {
	export CC=mpicc
	use fortran && export FC=mpif90
}

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_build fortran)
	)
	cmake-utils_src_configure
}
