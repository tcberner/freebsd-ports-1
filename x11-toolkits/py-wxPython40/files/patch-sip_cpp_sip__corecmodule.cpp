--- sip/cpp/sip_corecmodule.cpp.orig	2019-09-09 20:02:54 UTC
+++ sip/cpp/sip_corecmodule.cpp
@@ -7189,9 +7189,6 @@ wxUIntPtr testUIntPtrTypemap(wxUIntPtr value)
 // non-string/unicode objects to unicode, and won't raise exceptions
 static wxString i_Py2wxString(PyObject* source)
 {
-#if wxUSE_UNICODE_WCHAR == 0
-#error wxString conversion can only handle WCHAR wxStrings currently
-#endif
     PyErr_Clear();
     PyObject* uni = source;
     if (PyBytes_Check(source)) {
