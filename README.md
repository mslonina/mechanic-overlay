Gentoo Overlay for the Mechanic
-------------------------------

## Installation

    cd $EPREFIX/usr/local/portage
    git clone git://github.com/mslonina/mechanic-overlay.git


Add PORTDIR_OVERLAY to $EPREFIX/etc/portage/make.conf (full path must be used), i.e:

    PORTDIR_OVERLAY='/Users/mariusz/GENTOO/usr/local/portage/mechanic-overlay'


## Installing Mechanic

    emerge sci-misc/mechanic

