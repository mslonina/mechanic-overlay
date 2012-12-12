# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils vcs-snapshot

DESCRIPTION="MPI task management system"
HOMEPAGE="http://git.astri.umk.pl/projects/mechanic"
SRC_URI="http://github.com/mslonina/Mechanic/tarball/${PV} -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x64-macos ~amd64 ~x86"

DEPEND="
	virtual/mpi
  sci-libs/hdf5"
RDEPEND="${DEPEND}"

pkg_setup() {
	export CC=mpicc
}

