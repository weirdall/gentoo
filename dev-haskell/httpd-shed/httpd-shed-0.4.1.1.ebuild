# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A simple web-server with an interact style API"
HOMEPAGE="http://hackage.haskell.org/package/httpd-shed"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildexamples +network-bsd +network-uri"

RDEPEND=">=dev-lang/ghc-7.4.1:=
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-uri-2.5:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	network-bsd? ( >=dev-haskell/network-bsd-2.7:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?]
					>=dev-haskell/network-2.7:=[profile?] )
	!network-bsd? ( <dev-haskell/network-2.7:=[profile?] )
	network-uri? ( >=dev-haskell/network-uri-2.6:=[profile?]
					>=dev-haskell/network-2.6:=[profile?] )
	!network-uri? ( <dev-haskell/network-2.6:=[profile?]
					<dev-haskell/network-uri-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples) \
		$(cabal_flag network-bsd network-bsd) \
		$(cabal_flag network-uri network-uri)
}
