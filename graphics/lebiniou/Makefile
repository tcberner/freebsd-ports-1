PORTNAME=	lebiniou
DISTVERSION=	3.64.0
CATEGORIES=	graphics multimedia

MAINTAINER=	olivier@biniou.info
COMMENT=	User-friendly, powerful music visualization / VJing tool

LICENSE=				GPLv2+
LICENSE_FILE=		${WRKSRC}/COPYING

LIB_DEPENDS=	libavutil.so:multimedia/ffmpeg \
	libcaca.so:graphics/libcaca \
	libfftw3.so:math/fftw3 \
	libjack.so:audio/jack \
	libsndfile.so:audio/libsndfile \
	liborcania.so:devel/orcania \
	libyder.so:devel/yder \
	libulfius.so:www/ulfius \
	libjansson.so:devel/jansson \
	libpulse.so:audio/pulseaudio \
	libsndio.so:audio/sndio

USES=autoreconf gnome gettext-runtime magick:6 sdl
USE_GNOME=glib20
USE_SDL=sdl2 ttf2
USE_LDCONFIG=YES
USE_GITLAB=YES
GL_ACCOUNT=lebiniou
GL_COMMIT=0608063ed5a8a17d7d9b18f8cd8325d8e8e6553a

OPTIONS_DEFINE=	NLS

NLS_USES=	gettext
NLS_CONFIGURE_ENABLE=	nls

GNU_CONFIGURE=	yes
INSTALLS_ICONS=YES

.include <bsd.port.mk>
