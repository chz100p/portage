# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="JIT assembler for AArch64 CPUs by C++"
HOMEPAGE="https://github.com/fujitsu/xbyak_aarch64"
EGIT_REPO_URI="https://github.com/fujitsu/xbyak_aarch64.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~arm64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

RESTRICT="mirror test"

src_prepare() {
	local PATCHES=(
		"${FILESDIR}/xbyak_aarch64-0.9.0-Makefile.patch"
	)
	default
}

src_compile() { :; }

src_install() {
	emake install PREFIX="${ED}/usr"
}
