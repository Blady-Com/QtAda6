-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsizef.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QMarginsF;
with QtAda6.QtCore.QMargins;
with QtAda6.QtCore.Qt.AspectRatioMode;
package body QtAda6.QtCore.QSizeF is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSizeF");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QSizeF_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSizeF");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (sz_P : access QtAda6.QtCore.QSize.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSizeF");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, sz_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (w_P : float; h_P : float) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSizeF");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (h_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U
     (self : access Inst; s2_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSizeF");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_imul_U (self : access Inst; c_P : float) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_isub_U
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_mul_U (self : access Inst; c_P : float) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_reduce_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_reduce_U;
   function U_repr_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_repr_U;
   function U_sub_U
     (self : access Inst; s2_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function boundedTo
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundedTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundedTo;
   function expandedTo
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expandedTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end expandedTo;
   function grownBy
     (self : access Inst; m_P : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grownBy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end grownBy;
   function height (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end height;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   procedure scale
     (self   : access Inst; s_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize;
      mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end scale;
   procedure scale
     (self : access Inst; w_P : float; h_P : float; mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 2, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end scale;
   function scaled
     (self   : access Inst; s_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize;
      mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class) return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaled");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaled;
   function scaled
     (self : access Inst; w_P : float; h_P : float; mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaled");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 2, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaled;
   procedure setHeight (self : access Inst; h_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (h_P));
      Result := Object_CallObject (Method, Args, True);
   end setHeight;
   procedure setWidth (self : access Inst; w_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (w_P));
      Result := Object_CallObject (Method, Args, True);
   end setWidth;
   function shrunkBy
     (self : access Inst; m_P : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shrunkBy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shrunkBy;
   function toSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toSize;
   function toTuple (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTuple");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end toTuple;
   procedure transpose (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transpose");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end transpose;
   function transposed (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transposed");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transposed;
   function width (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end width;
end QtAda6.QtCore.QSizeF;
