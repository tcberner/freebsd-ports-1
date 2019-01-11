# Created by: gahr
# $FreeBSD$

PORTNAME=	meshlab
DISTVERSION=	48663dc
CATEGORIES=	cad

MAINTAINER=	lbartoletti@tuxfamily.org
COMMENT=	3D triangular meshes processing and editing tool

LICENSE=	GPLv2

BUILD_DEPENDS=	${LOCALBASE}/include/vcglib/img/img.h:devel/vcglib

USES=		dos2unix gl qmake:outsource qt:5
USE_GL=		gl glu glew
USE_QT=		buildtools_build core gui opengl xml xmlpatterns script
USE_GITHUB=	yes
GH_ACCOUNT=	cnr-isti-vclab
USE_LDCONFIG=	yes

QMAKE_SOURCE_PATH=	${WRKSRC}/src/meshlab_full.pro

DOS2UNIX_GLOB=	*.c *.cpp *.h

post-patch:
	${REINPLACE_CMD} 's|%%VCGDIR%%|${LOCALBASE}/include/|' ${WRKSRC}/src/general.pri

.include <bsd.port.mk>
