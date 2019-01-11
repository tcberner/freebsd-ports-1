--- src/meshlab/meshlab.pro.orig	2019-01-11 22:05:57 UTC
+++ src/meshlab/meshlab.pro
@@ -154,8 +154,8 @@ win32-g++:LIBS        	+= -L../external/lib/win32-gcc 
 #	win32-g++:release:LIBS 			+= -L../common/release -lcommon
 #}
 
-linux:LIBS += -L$$PWD/../external/lib/linux -ljhead -L../distrib -lcommon -lGLU
-linux:QMAKE_RPATHDIR += ../distrib
+LIBS += -L$$PWD/../external/lib/linux -ljhead -L../distrib -lcommon -lGLU
+QMAKE_RPATHDIR += ../distrib
 
 # uncomment in your local copy only in emergency cases.
 # We should never be too permissive
