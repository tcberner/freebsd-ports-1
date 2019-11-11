--- etg/propgridiface.py.orig	2019-05-21 23:12:12 UTC
+++ etg/propgridiface.py
@@ -89,7 +89,7 @@ def run():
             return sipGetState(sipTransferObj);
         }
         else if (sipPy == Py_None) {
-            *sipCppPtr = new wxPGPropArgCls(reinterpret_cast< wxPGProperty * >(NULL));
+            *sipCppPtr = new wxPGPropArgCls(static_cast< wxPGProperty * >(NULL));
             return sipGetState(sipTransferObj);
         }
         else {
