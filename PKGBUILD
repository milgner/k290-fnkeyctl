# Maintainer: Marcus Ilgner <mail@marcusilgner.com>
pkgname=k290-fnkeyctl
pkgver=1.1
pkgrel=2
pkgdesc="Logitech K290 Fn-key configuration"
arch=('i686' 'x86_64')
url="https://github.com/milgner/k290-fnkeyctl"
license=('MIT')
groups=()
depends=('libusb')
source=(k290_fnkeyctl.cpp
        99-k290-config.rules)
sha256sums=(7a2967f1fb89961b823e86d4ad7ad98ebc2421bcd96d02a598825c216a32630a
53889796bce94b160363b27fe330cb2104bbd85ac28d028c3878747c38bf93ae)					  

build() {
	cd "$srcdir"
	g++ -std=gnu++0x -lusb-1.0 k290_fnkeyctl.cpp -o k290_fnkeyctl
}

package() {
	cd "$srcdir"
	mkdir -p "$pkgdir/usr/sbin"
	cp k290_fnkeyctl "$pkgdir/usr/sbin"
	mkdir -p "$pkgdir/etc/udev/rules.d"
	sed -e s/\\/usr\\/local\\/sbin\\//\\/usr\\/sbin\\// 99-k290-config.rules > "$pkgdir/etc/udev/rules.d/99-k290-config.rules"
}
