-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsscenewheelevent.adb
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
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.Qt.ScrollPhase;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QPointF;
package body QtAda6.QtWidgets.QGraphicsSceneWheelEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsSceneWheelEvent");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function buttons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseButton.Class := new QtAda6.QtCore.Qt.MouseButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "buttons");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buttons;
   function delta_K (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "delta");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end delta_K;
   function isInverted (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInverted");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isInverted;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.KeyboardModifier.Class := new QtAda6.QtCore.Qt.KeyboardModifier.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "modifiers");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end modifiers;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation;
   function phase (self : access Inst) return access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ScrollPhase.Class := new QtAda6.QtCore.Qt.ScrollPhase.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "phase");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end phase;
   function pixelDelta (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixelDelta");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixelDelta;
   function pos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   function scenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scenePos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scenePos;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screenPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screenPos;
   procedure setButtons (self : access Inst; buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setButtons");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setButtons;
   procedure setDelta (self : access Inst; delta_K_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDelta");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (delta_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDelta;
   procedure setInverted (self : access Inst; inverted_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInverted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (inverted_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInverted;
   procedure setModifiers (self : access Inst; modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModifiers");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModifiers;
   procedure setOrientation (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOrientation;
   procedure setPhase (self : access Inst; scrollPhase_P : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPhase");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if scrollPhase_P /= null then scrollPhase_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPhase;
   procedure setPixelDelta (self : access Inst; delta_K_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixelDelta");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if delta_K_P /= null then delta_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPixelDelta;
   procedure setPos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPos;
   procedure setScenePos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScenePos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScenePos;
   procedure setScreenPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScreenPos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScreenPos;
end QtAda6.QtWidgets.QGraphicsSceneWheelEvent;
