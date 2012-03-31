# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="Library for reading and writing configuration files with HDF5 support"
HOMEPAGE="http://git.astri.umk.pl/projects/libreadconfig"
SRC_URI="http://github.com/downloads/mslonina/LibReadConfig/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x64-macos ~amd64 ~x86"
IUSE="hdf5"

DEPEND="hdf5? ( sci-libs/hdf5 )"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_build hdf5)
	)
	cmake-utils_src_configure
}
