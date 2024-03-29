# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

RESTRICT="mirror test"

DESCRIPTION="A execve() wrapper to fix problem with shebangs when running in Termux."
HOMEPAGE="https://github.com/termux/termux-exec/blob/master/README.md"
#https://devmanual.gentoo.org/ebuild-writing/variables/index.html
SRC_URI="https://github.com/termux/termux-exec/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	cp "${FILESDIR}/termux-exec-0.8/autogen.sh" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/config.sh.in" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/configure.ac" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/Makefile.am" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/execv.c" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/execvp.c" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/execvpe.c" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/confstr.h" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/libc-symbols.h" "${S}/."
	cp "${FILESDIR}/termux-exec-0.8/symbol-hacks.h" "${S}/."
	local PATCHES=(
		"${FILESDIR}/termux-exec-0.8-autotools.patch"
		"${FILESDIR}/termux-exec-0.8-posix_spawn.patch"
	)
	default
	mv "${S}/Makefile" "${S}/Makefile.orig"
}

src_configure() {
	sh ./autogen.sh
	econf --disable-static
}

src_install() {
	default
	find "${D}" -name '*.la' -exec rm -f '{}' +
}
