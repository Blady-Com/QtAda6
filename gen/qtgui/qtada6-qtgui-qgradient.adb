-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qgradient.adb
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
with QtAda6.QtGui.QGradient.Preset;
with QtAda6.QtGui.QGradient.CoordinateMode;
with QtAda6.QtGui.QGradient.InterpolationMode;
with QtAda6.QtGui.QGradient.Spread;
with QtAda6.QtGui.QGradient.Type_K;
package body QtAda6.QtGui.QGradient is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QGradient_P : UNION_QtAda6_QtGui_QGradient_QtAda6_QtGui_QGradient_Preset) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QGradient_P /= null then QGradient_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function coordinateMode_F (self : access Inst) return access QtAda6.QtGui.QGradient.CoordinateMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QGradient.CoordinateMode.Class := new QtAda6.QtGui.QGradient.CoordinateMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "coordinateMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end coordinateMode_F;
   function interpolationMode_F (self : access Inst) return access QtAda6.QtGui.QGradient.InterpolationMode.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QGradient.InterpolationMode.Class :=
        new QtAda6.QtGui.QGradient.InterpolationMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "interpolationMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end interpolationMode_F;
   procedure setColorAt
     (self    : access Inst; pos_P : float;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColorAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (pos_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColorAt;
   procedure setCoordinateMode (self : access Inst; mode_P : access QtAda6.QtGui.QGradient.CoordinateMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCoordinateMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCoordinateMode;
   procedure setInterpolationMode
     (self : access Inst; mode_P : access QtAda6.QtGui.QGradient.InterpolationMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInterpolationMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInterpolationMode;
   procedure setSpread (self : access Inst; spread_P : access QtAda6.QtGui.QGradient.Spread.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpread");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if spread_P /= null then spread_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSpread;
   procedure setStops (self : access Inst; stops_P : SEQUENCE_TUPLE_float_QtAda6_QtGui_QColor) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStops");
      List   := List_New (stops_P'Length);
      for ind in stops_P'Range loop
         List_SetItem (List, ssize_t (ind - stops_P'First), Tuple);
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStops;
   function spread_F (self : access Inst) return access QtAda6.QtGui.QGradient.Spread.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QGradient.Spread.Class := new QtAda6.QtGui.QGradient.Spread.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "spread");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end spread_F;
   function stops (self : access Inst) return LIST_TUPLE_float_QtAda6_QtGui_QColor is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stops");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end stops;
   function type_K_F (self : access Inst) return access QtAda6.QtGui.QGradient.Type_K.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QGradient.Type_K.Class := new QtAda6.QtGui.QGradient.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
end QtAda6.QtGui.QGradient;
