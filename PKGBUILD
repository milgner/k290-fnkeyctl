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
					  54c7691462f8a942f49a9780fcb3f6e407762188574f847f171fe96476029aed) 

build() {
	cd "$srcdir"
	g++ -std=gnu++0x -lusb-1.0 k290_fnkeyctl.cpp -o k290_fnkeyctl
}

package() {
	cd "$srcdir"
	mkdir -p "$pkgdir/usr/sbin"
	cp k290_fnkeyctl "$pkgdir/usr/sbin"
	mkdir -p "$pkgdir/etc/udev/rules.d"
	cp 99-k290-config.rules "$pkgdir/etc/udev/rules.d"
}
