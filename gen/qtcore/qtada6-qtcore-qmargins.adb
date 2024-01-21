-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmargins.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QMarginsF;
package body QtAda6.QtCore.QMargins is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMargins");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QMargins_P : access QtAda6.QtCore.QMargins.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMargins");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QMargins_P /= null then QMargins_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (left_P : int; top_P : int; right_P : int; bottom_P : int) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMargins");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (left_P));
      Tuple_SetItem (Args, 1, Long_FromLong (top_P));
      Tuple_SetItem (Args, 2, Long_FromLong (right_P));
      Tuple_SetItem (Args, 3, Long_FromLong (bottom_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U (self : access Inst; lhs_P : int) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (lhs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   function U_add_U
     (self : access Inst; m2_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m2_P /= null then m2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMargins");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_iadd_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if margins_P /= null then margins_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_imul_U (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_imul_U (self : access Inst; arg_1_P : float) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_isub_U (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_isub_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if margins_P /= null then margins_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_mul_U (self : access Inst; factor_P : int) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (factor_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_neg_U (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "__neg__");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_neg_U;
   function U_or_U
     (self : access Inst; m2_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__or__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m2_P /= null then m2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_or_U;
   function U_pos_U (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "__pos__");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_pos_U;
   function U_sub_U
     (self : access Inst; m2_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m2_P /= null then m2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function U_sub_U (self : access Inst; rhs_P : int) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rhs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function bottom (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottom");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end bottom;
   function isNull (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function left (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "left");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end left;
   function right (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "right");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end right;
   procedure setBottom (self : access Inst; bottom_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottom");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (bottom_P));
      Result := Object_CallObject (Method, Args, True);
   end setBottom;
   procedure setLeft (self : access Inst; left_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeft");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (left_P));
      Result := Object_CallObject (Method, Args, True);
   end setLeft;
   procedure setRight (self : access Inst; right_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (right_P));
      Result := Object_CallObject (Method, Args, True);
   end setRight;
   procedure setTop (self : access Inst; top_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTop");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (top_P));
      Result := Object_CallObject (Method, Args, True);
   end setTop;
   function toMarginsF (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toMarginsF");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toMarginsF;
   function top (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "top");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end top;
end QtAda6.QtCore.QMargins;
