-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpageranges.adb
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
with QtAda6.QtGui.QPageRanges;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QPageRanges.Range_K;
package body QtAda6.QtGui.QPageRanges is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageRanges");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QPageRanges.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageRanges");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageRanges");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   procedure addPage (self : access Inst; pageNumber_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pageNumber_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addPage;
   procedure addRange (self : access Inst; from_U_P : int; to_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRange;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   function contains (self : access Inst; pageNumber_P : int) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pageNumber_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end contains;
   function firstPage (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "firstPage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end firstPage;
   function fromString (ranges_P : str) return access QtAda6.QtGui.QPageRanges.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageRanges.Class := new QtAda6.QtGui.QPageRanges.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageRanges");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (ranges_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function lastPage (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastPage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end lastPage;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPageRanges.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function toRangeList (self : access Inst) return LIST_QtAda6_QtGui_QPageRanges_Range_K is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toRangeList");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end toRangeList;
   function toString (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toString;
end QtAda6.QtGui.QPageRanges;
