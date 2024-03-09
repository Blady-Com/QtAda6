-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qscroller.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QScroller;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QScroller.ScrollerGestureType;
with QtAda6.QtCore.Qt.GestureType;
with QtAda6.QtWidgets.QScroller.Input;
with QtAda6.QtWidgets.QScrollerProperties;
with QtAda6.QtWidgets.QScroller.State;
package body QtAda6.QtWidgets.QScroller is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function scrollerPropertiesChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "scrollerPropertiesChanged"));
   end scrollerPropertiesChanged;
   function stateChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "stateChanged"));
   end stateChanged;
   function activeScrollers return LIST_QtAda6_QtWidgets_QScroller is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "activeScrollers");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end activeScrollers;
   procedure ensureVisible
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : float; ymargin_P : float)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (xmargin_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ymargin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end ensureVisible;
   procedure ensureVisible
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : float; ymargin_P : float;
      scrollTime_P : int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (xmargin_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ymargin_P));
      Tuple_SetItem (Args, 3, Long_FromLong (scrollTime_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end ensureVisible;
   function finalPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "finalPosition");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end finalPosition;
   function grabGesture
     (target_P      : access QtAda6.QtCore.QObject.Inst'Class;
      gestureType_P : access QtAda6.QtWidgets.QScroller.ScrollerGestureType.Inst'Class := null)
      return access QtAda6.QtCore.Qt.GestureType.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.GestureType.Class := new QtAda6.QtCore.Qt.GestureType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "grabGesture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gestureType_P /= null then
         Dict_SetItemString (Dict, "gestureType", gestureType_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end grabGesture;
   function grabbedGesture
     (target_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtCore.Qt.GestureType.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.GestureType.Class := new QtAda6.QtCore.Qt.GestureType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "grabbedGesture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end grabbedGesture;
   function handleInput
     (self        : access Inst; input_P : access QtAda6.QtWidgets.QScroller.Input.Inst'Class;
      position_P  : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      timestamp_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "handleInput");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if input_P /= null then input_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if timestamp_P /= 0 then
         Dict_SetItemString (Dict, "timestamp", Long_FromLong (timestamp_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end handleInput;
   function hasScroller (target_P : access QtAda6.QtCore.QObject.Inst'Class) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "hasScroller");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasScroller;
   function pixelPerMeter (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixelPerMeter");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixelPerMeter;
   procedure resendPrepareEvent (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resendPrepareEvent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resendPrepareEvent;
   procedure scrollTo
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollTo;
   procedure scrollTo
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scrollTime_P : int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (scrollTime_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollTo;
   function scroller
     (target_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtWidgets.QScroller.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QScroller.Class := new QtAda6.QtWidgets.QScroller.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "scroller");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scroller;
   function scrollerProperties (self : access Inst) return access QtAda6.QtWidgets.QScrollerProperties.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QScrollerProperties.Class := new QtAda6.QtWidgets.QScrollerProperties.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scrollerProperties");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scrollerProperties;
   procedure setScrollerProperties (self : access Inst; prop_P : access QtAda6.QtWidgets.QScrollerProperties.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScrollerProperties");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if prop_P /= null then prop_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScrollerProperties;
   procedure setSnapPositionsX (self : access Inst; first_P : float; interval_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSnapPositionsX");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (first_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (interval_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSnapPositionsX;
   procedure setSnapPositionsX (self : access Inst; positions_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSnapPositionsX");
      List   := List_New (positions_P'Length);
      for ind in positions_P'Range loop
         List_SetItem (List, ssize_t (ind - positions_P'First), Float_FromDouble (positions_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSnapPositionsX;
   procedure setSnapPositionsY (self : access Inst; first_P : float; interval_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSnapPositionsY");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (first_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (interval_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSnapPositionsY;
   procedure setSnapPositionsY (self : access Inst; positions_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSnapPositionsY");
      List   := List_New (positions_P'Length);
      for ind in positions_P'Range loop
         List_SetItem (List, ssize_t (ind - positions_P'First), Float_FromDouble (positions_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSnapPositionsY;
   function state_F (self : access Inst) return access QtAda6.QtWidgets.QScroller.State.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QScroller.State.Class := new QtAda6.QtWidgets.QScroller.State.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state_F;
   procedure stop (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stop");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end stop;
   function target (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "target");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end target;
   procedure ungrabGesture (target_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScroller");
      Method := Object_GetAttrString (Class, "ungrabGesture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end ungrabGesture;
   function velocity (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "velocity");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end velocity;
end QtAda6.QtWidgets.QScroller;
