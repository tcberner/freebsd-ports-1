--- main.cpp.orig	2022-01-05 17:16:25 UTC
+++ main.cpp
@@ -26,7 +26,7 @@
 #include <boost/program_options.hpp>
 
 #ifdef ENABLE_APK_LOADING
-#include <unzip.h>
+#include <minizip/unzip.h>
 #endif
 
 namespace boost_pt = boost::property_tree;
