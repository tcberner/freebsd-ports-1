# Created by: lbartoletti <lbartoletti@FreeBSD.org>

PORTNAME=	minizip
PORTVERSION=	3.0.3
CATEGORIES=	archivers

MAINTAINER=	lbartoletti@FreeBSD.org
COMMENT=	Zip library and programs from Zlib distribution

LICENSE=	ZLIB
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		cmake:testing iconv ssl
USE_GITHUB=	yes
GH_ACCOUNT=	zlib-ng
GH_PROJECT=	minizip-ng

CMAKE_ON=	BUILD_SHARED_LIBS \
		MZ_BUILD_TESTS # build executable "tests": minizip/minigzip

CMAKE_ARGS=	-DINSTALL_INC_DIR=${INCLUDEDIR} \
		-DCMAKE_INSTALL_INCLUDEDIR=${INCLUDEDIR}

INCLUDEDIR=${PREFIX}/include/${PORTNAME}

post-install:
	${RLN} ${STAGEDIR}${INCLUDEDIR}/mz_compat.h ${STAGEDIR}${INCLUDEDIR}/ioapi.h
	${RLN} ${STAGEDIR}${INCLUDEDIR}/mz_crypt.h ${STAGEDIR}${INCLUDEDIR}/crypt.h

.include <bsd.port.mk>
