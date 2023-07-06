# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Binary distribution of owncloud client"
HOMEPAGE="https://owncloud.org"
SRC_URI="https://download.owncloud.com/desktop/ownCloud/stable/4.1.0.11250/linux-appimage/ownCloud-4.1.0.11250-x86_64.AppImage"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

# Download is already the binary
src_unpack() {
	mkdir -p "${S}/bin" || die
	cp "${DISTDIR}/ownCloud-4.1.0.11250-x86_64.AppImage" ${S}/owncloud-bin || die
}

#src_prepare() {
#	echo "Nothing to prepare here."
#}

src_configure() {
	echo "Nothing to configure here."
}

src_compile() {
	echo "Nothing to compile here."
}
src_install() {
	dobin owncloud-bin
}
