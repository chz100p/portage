# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A execve() wrapper to fix problem with shebangs when running in Termux."
HOMEPAGE="https://github.com/termux/termux-exec/blob/master/README.md"
EGIT_REPO_URI="https://github.com/termux/termux-exec.git"

LICENSE="Apache-2.0"
SLOT="0"
#KEYWORDS="amd64 arm arm64 x86"

RESTRICT="test"

src_prepare() {
	local PATCHES=(
		"${FILESDIR}/termux-exec-0.8-gentoo-prefix.patch"
	)
	default
}

#src_configure() {
#	./autogen.sh
#	econf --disable-static
#}

#src_install() {
#	default
#	find "${D}" -name '*.la' -exec rm -f '{}' +
#}
