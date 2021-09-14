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

CMAKE_ARGS=	-DINSTALL_INC_DIR=${PREFIX}/include/${PORTNAME}

.include <bsd.port.mk>
