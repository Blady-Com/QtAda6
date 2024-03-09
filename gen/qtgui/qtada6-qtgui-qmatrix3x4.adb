-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qmatrix3x4.adb
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
with QtAda6.QtGui.QMatrix3x4;
with QtAda6.QtGui.QMatrix4x3;
package body QtAda6.QtGui.QMatrix3x4 is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix3x4");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QMatrix3x4_P : access QtAda6.QtGui.QMatrix3x4.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix3x4");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QMatrix3x4_P /= null then QMatrix3x4_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : Iterable) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix3x4");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_call_U (self : access Inst; row_P : int; column_P : int) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__call__");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end U_call_U;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix3x4");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; other_P : access QtAda6.QtGui.QMatrix3x4.Inst'Class)
      return access QtAda6.QtGui.QMatrix3x4.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QMatrix3x4.Class := new QtAda6.QtGui.QMatrix3x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QMatrix3x4.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QMatrix3x4.Class := new QtAda6.QtGui.QMatrix3x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_isub_U
     (self : access Inst; other_P : access QtAda6.QtGui.QMatrix3x4.Inst'Class)
      return access QtAda6.QtGui.QMatrix3x4.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QMatrix3x4.Class := new QtAda6.QtGui.QMatrix3x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function data (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end data;
   procedure fill (self : access Inst; value_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fill;
   function isIdentity (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIdentity");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isIdentity;
   procedure setToIdentity (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToIdentity");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setToIdentity;
   function transposed (self : access Inst) return access QtAda6.QtGui.QMatrix4x3.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QMatrix4x3.Class := new QtAda6.QtGui.QMatrix4x3.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transposed");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transposed;
end QtAda6.QtGui.QMatrix3x4;
