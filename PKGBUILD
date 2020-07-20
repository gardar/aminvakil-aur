# Maintainer: Amin Vakil <info at aminvakil dot com>

_pkgname=tsunami-security-scanner
pkgname=google-tsunami-security-scanner
pkgver=0.0.1
pkgrel=3
pkgdesc="A general purpose network security scanner with an extensible plugin system for detecting high severity vulnerabilities with high confidence"
arch=(any)
url="https://github.com/google/tsunami-security-scanner"
license=('Apache')
depends=('nmap>=7.80' 'ncrack>=0.7' 'jdk11-openjdk') 
source=(
	"${pkgname}-${pkgver}.tar.gz::${url}/archive/${pkgver}.tar.gz"
        "${url}/raw/master/tsunami.yaml"
	)

sha256sums=('33162b9dc6e93504f7875b833847b775d2cf0f3da4ea45c36bb86a95a5a8eeef'
            '633313cb332fcafb46a7200b1b22d691160c2d5b5677123c1677bf53749d100b')

build() {
    cd ${srcdir}/${_pkgname}-${pkgver}
    ./gradlew shadowJar
}
package() {
    appdir="${pkgdir}/opt/${_pkgname}"
    jar=$(find ${srcdir} -name 'tsunami-main-*-cli.jar')
    jar_filename=$(basename -- "${jar}")

    mkdir -p "${appdir}"
    install ${jar} "${appdir}/${jar_filename}"
    install tsunami.yaml "${appdir}"
}
