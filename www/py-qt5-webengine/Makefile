PORTNAME=	webengine
DISTVERSION=	${PYQT_VERSION}
PORTREVISION=	3
CATEGORIES=	www devel python
MASTER_SITES=	${MASTER_SITES_PYQTWEBENGINE}
PKGNAMEPREFIX=	${PYQT_PY_RELNAME}-
DISTNAME=	${PYQTWEBENGINE_DISTNAME}

PYQT_DIST=	yes

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Python bindings for the Qt5 toolkit, QtWebEngine module

LICENSE=	GPLv3

DEPRECATED=	Uses EOL Python 2.7 via www/qt5-webengine
EXPIRATION_DATE=2021-06-23

LIB_DEPENDS=	libqscintilla2_qt5.so:devel/qscintilla2-qt5

USES=		gl python:3.5+ pyqt:5 qt:5
USE_GL=		gl
USE_PYQT=	sip_build pyqt5
USE_PYTHON=	concurrent flavors py3kplist
USE_QT=		core declarative gui location network printsupport webchannel \
		webengine widgets qmake_build

PLIST_SUB=		PYQT_WEBENGINE_VERSION=${DISTVERSION}

.include <bsd.port.mk>
