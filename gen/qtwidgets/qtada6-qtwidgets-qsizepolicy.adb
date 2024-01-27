-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qsizepolicy.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QSizePolicy.Policy;
with QtAda6.QtWidgets.QSizePolicy.ControlType;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.Qt.Orientation;
package body QtAda6.QtWidgets.QSizePolicy is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (horizontal_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
      vertical_P   : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
      type_K_P     : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if horizontal_P /= null then horizontal_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if vertical_P /= null then vertical_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function controlType_F (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QSizePolicy.ControlType.Class :=
        new QtAda6.QtWidgets.QSizePolicy.ControlType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "controlType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end controlType_F;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "expandingDirections");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end expandingDirections;
   function hasHeightForWidth (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasHeightForWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasHeightForWidth;
   function hasWidthForHeight (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasWidthForHeight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasWidthForHeight;
   function horizontalPolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QSizePolicy.Policy.Class := new QtAda6.QtWidgets.QSizePolicy.Policy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "horizontalPolicy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end horizontalPolicy;
   function horizontalStretch (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalStretch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end horizontalStretch;
   function retainSizeWhenHidden (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "retainSizeWhenHidden");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end retainSizeWhenHidden;
   procedure setControlType (self : access Inst; type_K_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setControlType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setControlType;
   procedure setHeightForWidth (self : access Inst; b_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeightForWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setHeightForWidth;
   procedure setHorizontalPolicy (self : access Inst; d_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if d_P /= null then d_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setHorizontalPolicy;
   procedure setHorizontalStretch (self : access Inst; stretchFactor_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalStretch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (stretchFactor_P));
      Result := Object_CallObject (Method, Args, True);
   end setHorizontalStretch;
   procedure setRetainSizeWhenHidden (self : access Inst; retainSize_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRetainSizeWhenHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (retainSize_P));
      Result := Object_CallObject (Method, Args, True);
   end setRetainSizeWhenHidden;
   procedure setVerticalPolicy (self : access Inst; d_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if d_P /= null then d_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setVerticalPolicy;
   procedure setVerticalStretch (self : access Inst; stretchFactor_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalStretch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (stretchFactor_P));
      Result := Object_CallObject (Method, Args, True);
   end setVerticalStretch;
   procedure setWidthForHeight (self : access Inst; b_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidthForHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setWidthForHeight;
   procedure transpose (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transpose");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end transpose;
   function transposed (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QSizePolicy.Class := new QtAda6.QtWidgets.QSizePolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transposed");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transposed;
   function verticalPolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QSizePolicy.Policy.Class := new QtAda6.QtWidgets.QSizePolicy.Policy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "verticalPolicy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end verticalPolicy;
   function verticalStretch (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalStretch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end verticalStretch;
end QtAda6.QtWidgets.QSizePolicy;
