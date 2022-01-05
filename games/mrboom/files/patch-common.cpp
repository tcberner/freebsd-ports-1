--- common.cpp.orig	2022-01-05 19:56:57 UTC
+++ common.cpp
@@ -4,6 +4,8 @@
 #define NO_NETWORK
 #endif
 
+typedef unsigned long uLong;
+
 #ifdef _WIN32
 #include <direct.h>
 #else
