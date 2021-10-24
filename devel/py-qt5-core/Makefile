PORTNAME=	core
PORTREVISION=	3
CATEGORIES=	devel python

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Python bindings for the Qt5 toolkit, QtCore module

PYQT_MODULE=	QtCore

PYQT_DIST=	yes

LIB_DEPENDS=	libqscintilla2_qt5.so:devel/qscintilla2-qt5

USES=		python:3.5+ pyqt:5 qt:5
USE_PYTHON=	concurrent flavors py3kplist
USE_PYQT=	qtbuilder sip pysip
USE_QT=		core buildtools_build qmake_build

.include <bsd.port.pre.mk>

PLIST_SUB+=	PYTHON_MAJOR_VER="${PYTHON_MAJOR_VER}"
post-patch:
	${RM} -r ${WRKSRC}/pyuic/uic/port_v2

post-install:
	${INSTALL_DATA} ${FILESDIR}/Qt.py ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}/PyQt5
	${PYTHON_CMD} ${PYTHON_LIBDIR}/compileall.py \
		-f -d ${PYTHONPREFIX_SITELIBDIR}/PyQt5 \
		${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}/PyQt5
	${PYTHON_CMD} -O ${PYTHON_LIBDIR}/compileall.py \
		-f -d ${PYTHONPREFIX_SITELIBDIR}/PyQt5 \
		${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}/PyQt5
	# This Qt.so masks the Qt.py which is supposed to import
	# all of the Qt submodules.
	${RM} ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}/PyQt5/Qt.so
	${STRIP_CMD} ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}/PyQt5/QtCore.abi${PYTHON_MAJOR_VER}.so

.include <bsd.port.post.mk>
