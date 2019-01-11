--- src/meshlabserver/meshlabserver.pro.orig	2019-01-11 22:06:52 UTC
+++ src/meshlabserver/meshlabserver.pro
@@ -29,8 +29,9 @@ win32-msvc2010:  LIBS += -L../distrib -lcommon -lopeng
 win32-msvc2012:  LIBS += -L../distrib -lcommon -lopengl32 -lGLU32
 win32-msvc2015:  LIBS += -L../distrib -lcommon -lopengl32 -lGLU32
 win32-g++:  LIBS += -L../distrib -lcommon      
-linux:  LIBS += -L../distrib -lcommon
-linux:QMAKE_RPATHDIR += ../distrib
+
+LIBS += -L../distrib -lcommon
+QMAKE_RPATHDIR += ../distrib
 #CONFIG (release,debug | release) {
 #	win32-msvc2005:release:  LIBS += -L../common/release -lcommon
 #	win32-msvc2008:release:  LIBS += -L../common/release -lcommon
