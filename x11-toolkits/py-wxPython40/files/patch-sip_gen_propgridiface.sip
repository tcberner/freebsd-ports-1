--- sip/gen/propgridiface.sip.orig	2019-05-22 02:13:01 UTC
+++ sip/gen/propgridiface.sip
@@ -108,7 +108,7 @@ class wxPGPropArgCls (public)
             return sipGetState(sipTransferObj);
         }
         else if (sipPy == Py_None) {
-            *sipCppPtr = new wxPGPropArgCls(reinterpret_cast< wxPGProperty * >(NULL));
+            *sipCppPtr = new wxPGPropArgCls(static_cast< wxPGProperty * >(NULL));
             return sipGetState(sipTransferObj);
         }
         else {
