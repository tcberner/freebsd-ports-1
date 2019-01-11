--- src/meshlab_full.pro.orig	2019-01-11 22:01:44 UTC
+++ src/meshlab_full.pro
@@ -1,7 +1,7 @@
 #config += debug_and_release
 TEMPLATE      = subdirs
 CONFIG += ordered
-SUBDIRS       = common \
+SUBDIRS       = external common \
                 meshlab \
                 meshlabserver \
 # IO plugins
