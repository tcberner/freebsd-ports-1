--- src/string.sip.orig	2019-05-21 23:12:12 UTC
+++ src/string.sip
@@ -23,9 +23,6 @@
     // wxUSE_UNICODE_UTF8 for this conversion.
 
     %ConvertToTypeCode
-        #if wxUSE_UNICODE_WCHAR == 0
-        #error wxString converison can only handle WCHAR wxStrings currently
-        #endif
 
         // Code to test a PyObject for compatibility with wxString
         if (!sipIsErr) {
