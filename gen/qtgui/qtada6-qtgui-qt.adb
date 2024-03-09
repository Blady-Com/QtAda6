-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qt.adb
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
with QtAda6.QtCore.Qt.WhiteSpaceMode;
package body QtAda6.QtGui.Qt is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function convertFromPlainText
     (plain_P : str; mode_P : access QtAda6.QtCore.Qt.WhiteSpaceMode.Inst'Class := null) return str
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "convertFromPlainText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (plain_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end convertFromPlainText;
   function mightBeRichText (arg_1_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "mightBeRichText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end mightBeRichText;
end QtAda6.QtGui.Qt;
