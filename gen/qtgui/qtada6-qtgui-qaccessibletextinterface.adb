-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessibletextinterface.adb
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
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QAccessible.TextBoundaryType;
package body QtAda6.QtGui.QAccessibleTextInterface is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleTextInterface");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addSelection (self : access Inst; startOffset_P : int; endOffset_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addSelection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (startOffset_P));
      Tuple_SetItem (Args, 1, Long_FromLong (endOffset_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addSelection;
   function attributes (self : access Inst; offset_P : int) return TUPLE_str_int_int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "attributes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_str_int_int do
         Ret.C0 := As_String (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
         Ret.C2 := Long_AsLong (Tuple_GetItem (Result, 2));
      end return;
   end attributes;
   function characterCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "characterCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end characterCount;
   function characterRect (self : access Inst; offset_P : int) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "characterRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end characterRect;
   function cursorPosition (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cursorPosition");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end cursorPosition;
   function offsetAtPoint (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "offsetAtPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end offsetAtPoint;
   procedure removeSelection (self : access Inst; selectionIndex_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeSelection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (selectionIndex_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeSelection;
   procedure scrollToSubstring (self : access Inst; startIndex_P : int; endIndex_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollToSubstring");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (startIndex_P));
      Tuple_SetItem (Args, 1, Long_FromLong (endIndex_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollToSubstring;
   function selection (self : access Inst; selectionIndex_P : int) return TUPLE_int_int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (selectionIndex_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_int_int do
         Ret.C0 := Long_AsLong (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
      end return;
   end selection;
   function selectionCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end selectionCount;
   procedure setCursorPosition (self : access Inst; position_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCursorPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (position_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCursorPosition;
   procedure setSelection (self : access Inst; selectionIndex_P : int; startOffset_P : int; endOffset_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelection");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (selectionIndex_P));
      Tuple_SetItem (Args, 1, Long_FromLong (startOffset_P));
      Tuple_SetItem (Args, 2, Long_FromLong (endOffset_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSelection;
   function text (self : access Inst; startOffset_P : int; endOffset_P : int) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (startOffset_P));
      Tuple_SetItem (Args, 1, Long_FromLong (endOffset_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end text;
   function textAfterOffset
     (self : access Inst; offset_P : int; boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class)
      return TUPLE_str_int_int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textAfterOffset");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 1, (if boundaryType_P /= null then boundaryType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_str_int_int do
         Ret.C0 := As_String (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
         Ret.C2 := Long_AsLong (Tuple_GetItem (Result, 2));
      end return;
   end textAfterOffset;
   function textAtOffset
     (self : access Inst; offset_P : int; boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class)
      return TUPLE_str_int_int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textAtOffset");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 1, (if boundaryType_P /= null then boundaryType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_str_int_int do
         Ret.C0 := As_String (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
         Ret.C2 := Long_AsLong (Tuple_GetItem (Result, 2));
      end return;
   end textAtOffset;
   function textBeforeOffset
     (self : access Inst; offset_P : int; boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class)
      return TUPLE_str_int_int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textBeforeOffset");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 1, (if boundaryType_P /= null then boundaryType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_str_int_int do
         Ret.C0 := As_String (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
         Ret.C2 := Long_AsLong (Tuple_GetItem (Result, 2));
      end return;
   end textBeforeOffset;
end QtAda6.QtGui.QAccessibleTextInterface;
