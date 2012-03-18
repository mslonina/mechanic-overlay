# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="MPI task management system"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="http://github.com/downloads/mslonina/Mechanic/mechanic-0.12.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="fortran"

RDEPEND="
  fortran? ( >=sys-devel/gcc-4.6 sci-libs/hdf5[fortran] sys-cluster/openmpi[fortran] )
  sys-cluster/openmpi
  dev-libs/libreadconfig[hdf]
"

pkg_setup() {
  export CC=mpicc
  use fortran && export FC=mpif90
}

src_prepare() {
  base_src_prepare
}

src_configure() {
  if use fortran; then
    local mycmakeargs=(
      -DBUILD_FORTRAN:BOOL=ON
    )
  else
    local mycmakeargs=(
      -DBUILD_FORTRAN:BOOL=OFF
    )
  fi
  cmake-utils_src_configure
}

src_install() {
  cmake-utils_src_install
}


