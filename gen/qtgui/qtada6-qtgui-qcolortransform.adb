-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qcolortransform.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.Qt.GlobalColor;
package body QtAda6.QtGui.QColorTransform is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorTransform");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (colorTransform_P : access QtAda6.QtGui.QColorTransform.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorTransform");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, colorTransform_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorTransform");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function isIdentity (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIdentity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isIdentity;
   function map (self : access Inst; argb_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (argb_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end map;
   function map
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; rgba64_P : access QtAda6.QtGui.QRgba64.Inst'Class)
      return access QtAda6.QtGui.QRgba64.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QRgba64.Class := new QtAda6.QtGui.QRgba64.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, rgba64_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QColorTransform.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
end QtAda6.QtGui.QColorTransform;
