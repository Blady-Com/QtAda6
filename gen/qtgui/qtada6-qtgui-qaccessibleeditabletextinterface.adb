-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessibleeditabletextinterface.adb
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
package body QtAda6.QtGui.QAccessibleEditableTextInterface is
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
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleEditableTextInterface");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure deleteText (self : access Inst; startOffset_P : int; endOffset_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deleteText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (startOffset_P));
      Tuple_SetItem (Args, 1, Long_FromLong (endOffset_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end deleteText;
   procedure insertText (self : access Inst; offset_P : int; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertText;
   procedure replaceText (self : access Inst; startOffset_P : int; endOffset_P : int; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replaceText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (startOffset_P));
      Tuple_SetItem (Args, 1, Long_FromLong (endOffset_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end replaceText;
end QtAda6.QtGui.QAccessibleEditableTextInterface;
