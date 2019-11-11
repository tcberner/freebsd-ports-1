--- sip/cpp/sip_corewxString.cpp.orig	2019-09-09 20:02:15 UTC
+++ sip/cpp/sip_corewxString.cpp
@@ -49,10 +49,6 @@ static int convertTo_wxString(PyObject *sipPy,void **s
 {
      ::wxString **sipCppPtr = reinterpret_cast< ::wxString **>(sipCppPtrV);
 
-        #if wxUSE_UNICODE_WCHAR == 0
-        #error wxString converison can only handle WCHAR wxStrings currently
-        #endif
-
         // Code to test a PyObject for compatibility with wxString
         if (!sipIsErr) {
             if (PyBytes_Check(sipPy) || PyUnicode_Check(sipPy))
