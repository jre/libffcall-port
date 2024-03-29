# $OpenBSD$

# XXX alpha hppa mips64el
ONLY_FOR_ARCHS =	aarch64 amd64 arm i386 mips64 powerpc sparc64

COMMENT =	foreign function call interface library

DISTNAME =	libffcall-2.2
SHARED_LIBS =	avcall		2.0 \
		callback	2.0 \
		ffcall		0.0 \
		trampoline	0.0
CATEGORIES =	devel
HOMEPAGE =	https://www.gnu.org/software/libffcall/
MASTER_SITES =	${MASTER_SITE_GNU:=libffcall/}

# GPLv2+
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	gnu
FAKE_FLAGS=		htmldir="\$$(datadir)/doc/ffcall/html"

USE_WXNEEDED =		Yes
CONFIGURE_ENV +=	ffcall_cv_codeexec=no \
			ffcall_cv_malloc_mprotect_can_exec=yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffcall/html

.include <bsd.port.mk>
