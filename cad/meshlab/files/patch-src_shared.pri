--- src/shared.pri.orig	2018-12-19 05:48:06 UTC
+++ src/shared.pri
@@ -1,8 +1,8 @@
 # This is the common include for all the plugins
 
 include (general.pri)
-VCGDIR = ../$$VCGDIR
-EIGENDIR = ../$$EIGENDIR
+VCGDIR = $$VCGDIR
+EIGENDIR = $$EIGENDIR
 
 TEMPLATE      = lib
 CONFIG       += plugin
@@ -10,6 +10,8 @@ QT += opengl
 QT += xml
 QT += xmlpatterns
 QT += script
+
+LIBS+=../../common/libcommon.a
 
 mac:LIBS += ../../common/libcommon.dylib
 
