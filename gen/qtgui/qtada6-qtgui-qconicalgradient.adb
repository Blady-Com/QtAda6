-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qconicalgradient.adb
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
with QtAda6.QtGui.QConicalGradient;
with QtAda6.QtCore.QPointF;
package body QtAda6.QtGui.QConicalGradient is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QConicalGradient");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QConicalGradient_P : access QtAda6.QtGui.QConicalGradient.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QConicalGradient");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QConicalGradient_P /= null then QConicalGradient_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      startAngle_P : float) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QConicalGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (startAngle_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (cx_P : float; cy_P : float; startAngle_P : float) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QConicalGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (cx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (cy_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (startAngle_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QConicalGradient");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function angle (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "angle");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end angle;
   function center (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "center");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end center;
   procedure setAngle (self : access Inst; angle_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (angle_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAngle;
   procedure setCenter
     (self : access Inst; center_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenter;
   procedure setCenter (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenter;
end QtAda6.QtGui.QConicalGradient;
