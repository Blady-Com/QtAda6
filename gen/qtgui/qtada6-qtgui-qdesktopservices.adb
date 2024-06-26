-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qdesktopservices.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QDesktopServices is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function openUrl (url_P : access QtAda6.QtCore.QUrl.Inst'Class) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
      Method := Object_GetAttrString (Class, "openUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if url_P /= null then url_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end openUrl;
   function openUrl (url_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
      Method := Object_GetAttrString (Class, "openUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (url_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end openUrl;
   procedure setUrlHandler (scheme_P : str; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; method_P : bytes) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
      Method := Object_GetAttrString (Class, "setUrlHandler");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (scheme_P));
      Tuple_SetItem (Args, 1, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Bytes_FromString (Standard.String (method_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setUrlHandler;
   procedure unsetUrlHandler (scheme_P : str) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
      Method := Object_GetAttrString (Class, "unsetUrlHandler");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (scheme_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unsetUrlHandler;
end QtAda6.QtGui.QDesktopServices;
