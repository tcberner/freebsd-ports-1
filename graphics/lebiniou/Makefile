PORTNAME=	lebiniou
DISTVERSION=	3.64.0
CATEGORIES=	graphics multimedia

MAINTAINER=	olivier@biniou.info
COMMENT=	User-friendly, powerful music visualization / VJing tool

LICENSE=	GPLv2+
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	v4l_compat>0:multimedia/v4l_compat
LIB_DEPENDS=	libavutil.so:multimedia/ffmpeg \
		libcaca.so:graphics/libcaca \
		libfftw3.so:math/fftw3 \
		libjack.so:audio/jack \
		libsndfile.so:audio/libsndfile \
		liborcania.so:devel/orcania \
		libyder.so:devel/yder \
		libulfius.so:www/ulfius \
		libjansson.so:devel/jansson \
		liblo.so:audio/liblo \
		libasound.so:audio/alsa-lib \
		libpulse.so:audio/pulseaudio \
		libsndio.so:audio/sndio \
		libsndfile.so:audio/libsndfile \
		libfreetype.so:print/freetype2
RUN_DEPENDS=	v4l_compat>0:multimedia/v4l_compat

USES=		autoreconf gnome magick:6 sdl

USE_GNOME=	glib20
USE_SDL=	sdl2
USE_LDCONFIG=	YES
USE_GITLAB=	YES
GL_ACCOUNT=	lebiniou
GL_COMMIT=	0608063ed5a8a17d7d9b18f8cd8325d8e8e6553a

GNU_CONFIGURE=	YES
INSTALLS_ICONS=	YES

.include <bsd.port.mk>
