PORTNAME=	minizip-ng
PORTVERSION=	3.0.4
CATEGORIES=	archivers

MAINTAINER=	lbartoletti@FreeBSD.org
COMMENT=	Fork of the popular minizip found in the zlib distribution

LICENSE=	ZLIB

LIB_DEPENDS=	libzstd.so:archivers/zstd

USES=		cmake:testing iconv
USE_LDCONFIG=	yes
USE_GITHUB=	yes
GH_ACCOUNT=	zlib-ng

CMAKE_ON=	BUILD_SHARED_LIBS
CMAKE_ARGS=	MZ_PROJECT_SUFFIX=-ng
CMAKE_TESTING_ON=	MZ_BUILD_TEST MZ_BUILD_UNIT_TEST

.include <bsd.port.mk>
