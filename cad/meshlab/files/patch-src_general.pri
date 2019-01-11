--- src/general.pri.orig	2018-12-19 05:48:06 UTC
+++ src/general.pri
@@ -5,7 +5,7 @@
 # it can be double or float according to user needs.
 DEFINES += MESHLAB_SCALAR=float
 
-VCGDIR   = ../../../vcglib
+VCGDIR   = %%VCGDIR%%/vcglib
 EIGENDIR = $$VCGDIR/eigenlib
 GLEWDIR = ../external/glew-2.1.0
 
