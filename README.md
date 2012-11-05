Gentoo Overlay for the Mechanic
-------------------------------

## Installation

    cd $EPREFIX/usr/local/portage
    git clone git://github.com/mslonina/mechanic-overlay.git


## Add PORTDIR_OVERLAY to $EPREFIX/make.conf (full path must be used), i.e:

    PORTDIR_OVERLAY='/Users/mariusz/GENTOO/usr/local/portage/mechanic-overlay'

## Installing Mechanic-0.12

    USE="fortran hdf5" emerge >=sci-misc/mechanic-0.12.7

    Note: for MAC OS X users:
    USE="-numa -pci static-libs fortran hdf5" emerge mechanic

## Installing Mechanic-0.12 modules

    emerge mechanic_module_arnoldweb

## Installing fetch-restricted Mechanic-0.12 modules

To install fetch-restricted modules, please send an email to mechanics@astri.umk.pl. The tarball should be placed in $PREFIX/usr/portage/distfiles.

## Installing Mechanic-2.0

    USE="hdf5" emerge >=sci-misc/mechanic-2.0.0

Note: Mechanic-0.12 and Mechanic-2.0 modules are incompatible. Direct Fortran support has
been dropped in Mechanic-2.0 branch.

## Installing development branch

Note: stable modules are incompatible with the development branch

    emerge --autounmask-write mechanic-9999
    emerge mechanic-9999
