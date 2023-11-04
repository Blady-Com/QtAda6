-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qscroller.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QPointF;
with QtAda6.QtWidgets.QScroller.ScrollerGestureType;
with QtAda6.QtCore.Qt.GestureType;
with QtAda6.QtWidgets.QScroller.Input;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtWidgets.QScrollerProperties;
with QtAda6.QtWidgets.QScroller.State;
package body QtAda6.QtWidgets.QScroller is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function activeScrollers return List_QtAda6_QtWidgets_QScroller is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "activeScrollers");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end activeScrollers;
   procedure ensureVisible
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : float; ymargin_P : float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Float_FromDouble (xmargin_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ymargin_P));
      Result := Object_CallObject (Method, Args, True);
   end ensureVisible;
   procedure ensureVisible
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : float; ymargin_P : float;
      scrollTime_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Float_FromDouble (xmargin_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ymargin_P));
      Tuple_SetItem (Args, 3, Long_FromLong (scrollTime_P));
      Result := Object_CallObject (Method, Args, True);
   end ensureVisible;
   function finalPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "finalPosition");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end finalPosition;
   function grabGesture
     (target_P      : access QtAda6.QtCore.QObject.Inst'Class;
      gestureType_P : access QtAda6.QtWidgets.QScroller.ScrollerGestureType.Inst'Class)
      return access QtAda6.QtCore.Qt.GestureType.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.GestureType.Class := new QtAda6.QtCore.Qt.GestureType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "grabGesture");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, target_P.Python_Proxy);
      Tuple_SetItem (Args, 1, gestureType_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end grabGesture;
   function grabbedGesture
     (target_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtCore.Qt.GestureType.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.GestureType.Class := new QtAda6.QtCore.Qt.GestureType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "grabbedGesture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, target_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end grabbedGesture;
   function handleInput
     (self        : access Inst; input_P : access QtAda6.QtWidgets.QScroller.Input.Inst'Class;
      position_P  : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      timestamp_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "handleInput");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, input_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Long_FromLong (timestamp_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end handleInput;
   function hasScroller (target_P : access QtAda6.QtCore.QObject.Inst'Class) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "hasScroller");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, target_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasScroller;
   function pixelPerMeter (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixelPerMeter");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixelPerMeter;
   procedure resendPrepareEvent (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resendPrepareEvent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resendPrepareEvent;
   procedure scrollTo
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end scrollTo;
   procedure scrollTo
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scrollTime_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (scrollTime_P));
      Result := Object_CallObject (Method, Args, True);
   end scrollTo;
   function scroller_F
     (target_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtWidgets.QScroller.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QScroller.Class := new QtAda6.QtWidgets.QScroller.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "scroller");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, target_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scroller_F;
   function scrollerProperties (self : access Inst) return access QtAda6.QtWidgets.QScrollerProperties.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QScrollerProperties.Class := new QtAda6.QtWidgets.QScrollerProperties.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scrollerProperties");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scrollerProperties;
   procedure setScrollerProperties (self : access Inst; prop_P : access QtAda6.QtWidgets.QScrollerProperties.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScrollerProperties");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, prop_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setScrollerProperties;
   procedure setSnapPositionsX (self : access Inst; first_P : float; interval_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSnapPositionsX");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (first_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (interval_P));
      Result := Object_CallObject (Method, Args, True);
   end setSnapPositionsX;
   procedure setSnapPositionsX (self : access Inst; positions_P : Sequence_float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSnapPositionsX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setSnapPositionsX;
   procedure setSnapPositionsY (self : access Inst; first_P : float; interval_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSnapPositionsY");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (first_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (interval_P));
      Result := Object_CallObject (Method, Args, True);
   end setSnapPositionsY;
   procedure setSnapPositionsY (self : access Inst; positions_P : Sequence_float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSnapPositionsY");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setSnapPositionsY;
   function state_F (self : access Inst) return access QtAda6.QtWidgets.QScroller.State.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QScroller.State.Class := new QtAda6.QtWidgets.QScroller.State.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state_F;
   procedure stop (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stop");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end stop;
   function target (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "target");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end target;
   procedure ungrabGesture (target_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "ungrabGesture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, target_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end ungrabGesture;
   function velocity (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "velocity");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end velocity;
end QtAda6.QtWidgets.QScroller;
