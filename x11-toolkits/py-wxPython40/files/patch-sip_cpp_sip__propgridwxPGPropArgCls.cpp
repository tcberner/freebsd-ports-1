--- sip/cpp/sip_propgridwxPGPropArgCls.cpp.orig	2019-05-22 02:14:14 UTC
+++ sip/cpp/sip_propgridwxPGPropArgCls.cpp
@@ -317,7 +317,7 @@ static int convertTo_wxPGPropArgCls(PyObject *sipPy,vo
             return sipGetState(sipTransferObj);
         }
         else if (sipPy == Py_None) {
-            *sipCppPtr = new wxPGPropArgCls(reinterpret_cast< wxPGProperty * >(NULL));
+            *sipCppPtr = new wxPGPropArgCls(static_cast< wxPGProperty * >(NULL));
             return sipGetState(sipTransferObj);
         }
         else {
