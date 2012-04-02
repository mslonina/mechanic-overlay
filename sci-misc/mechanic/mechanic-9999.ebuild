# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 cmake-utils

DESCRIPTION="MPI task management system"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
EGIT_REPO_URI="git://github.com/mslonina/Mechanic.git"
EGIT_PROJECT="mechanic-9999"
EGIT_BRANCH="0.13"
SRC_URI=""

LICENSE="BSD"
SLOT="2"
KEYWORDS=""

DEPEND=">=dev-libs/libreadconfig-0.12.2[hdf5]
	virtual/mpi
  sci-libs/hdf5"
RDEPEND="${DEPEND}"

pkg_setup() {
	export CC=mpicc
}

src_unpack() {
  default
  git-2_src_unpack
}

src_configure() {
	cmake-utils_src_configure
}
