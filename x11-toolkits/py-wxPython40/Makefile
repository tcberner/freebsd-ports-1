# $FreeBSD$

PORTNAME=	wxPython
PORTVERSION=	4.0.6
CATEGORIES=	x11-toolkits python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
PKGNAMESUFFIX=	40
DIST_SUBDIR=	python

MAINTAINER=	python@FreeBSD.org
COMMENT=	GUI toolkit for the Python programming language

LICENSE=	WXWINDOWS LGPL21+ GPLv2+
LICENSE_COMB=	multi
LICENSE_NAME_WXWINDOWS=	wxWindows Library Licence, Version 3.1
LICENSE_FILE_WXWINDOWS=	${WRKSRC}/license/licence.txt
LICENSE_PERMS_WXWINDOWS=	dist-mirror pkg-mirror auto-accept

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pathlib2>0:devel/py-pathlib2@${PY_FLAVOR}

USES=		compiler:c++11-lib gl localbase pkgconfig python
USE_GL=		glu
USE_WX=		3.0
USE_PYTHON=	distutils autoplist

OPTIONS_DEFINE=		NLS
OPTIONS_DEFAULT=	NLS

NLS_USES=	gettext

post-patch:
	@${REINPLACE_CMD} -e "s|WX_CONFIG = 'wx-config'|WX_CONFIG = 'wxgtk3u-3.0-config'|" ${WRKSRC}/build.py

#post-install:
#.for l in _glcanvas _dataview _richtext _html2 _core siplib _media _aui _xml _propgrid _html _adv _stc _ribbon _xrc _grid
#	@${STRIPCMD} ${STAGEDIR}${PYTHON_SITELIBDIR}/wx/${l}.so
#.endfor

.include <bsd.port.mk>
