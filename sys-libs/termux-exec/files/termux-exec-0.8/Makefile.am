AUTOMAKE_OPTIONS = foreign no-dependencies
ACLOCAL_AMFLAGS = -I m4

#SUBDIRS = 

#EXTRA_DIST = COPYING LICENSE NEWS.md README.md THANKS.md autogen.sh makedist.sh

#prove: all
#	cd test && $(MAKE) $(AM_MAKEFLAGS) prove

#test: all
#	cd test && $(MAKE) $(AM_MAKEFLAGS) test

#.PHONY: prove test

#pkglib_LTLIBRARIES = libtermux-exec.la
lib_LTLIBRARIES = libtermux-exec.la
libtermux_exec_la_SOURCES= \
    termux-exec.c
libtermux_exec_la_LDFLAGS = -avoid-version

AM_CFLAGS = $(EXTRA_CFLAGS)
AM_LDFLAGS = $(EXTRA_LDFLAGS)
