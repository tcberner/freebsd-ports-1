--- src/wxpy_api.sip.orig	2019-05-21 23:12:12 UTC
+++ src/wxpy_api.sip
@@ -29,9 +29,6 @@
 // non-string/unicode objects to unicode, and won't raise exceptions
 static wxString i_Py2wxString(PyObject* source)
 {
-#if wxUSE_UNICODE_WCHAR == 0
-#error wxString conversion can only handle WCHAR wxStrings currently
-#endif
     PyErr_Clear();
     PyObject* uni = source;
     if (PyBytes_Check(source)) {
