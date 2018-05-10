# $OpenBSD$

# aarch64 arm powerpc
ONLY_FOR_ARCHS =	amd64 i386 sparc64

COMMENT =	foreign function call interface library

DISTNAME =	libffcall-2.1
SHARED_LIBS =	avcall		2.0 \
		callback	2.0 \
		ffcall		0.0 \
		trampoline	0.0
CATEGORIES =	devel
HOMEPAGE =	https://www.gnu.org/software/libffcall/
MASTER_SITES =	${MASTER_SITE_GNU:=libffcall/}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu
FAKE_FLAGS=		htmldir="\$$(datadir)/doc/ffcall/html"

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffcall/html

.include <bsd.port.mk>
