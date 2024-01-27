-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgestureevent.adb
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
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QGesture;
with QtAda6.QtCore.Qt.GestureType;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtWidgets.QWidget;
package body QtAda6.QtWidgets.QGestureEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (gestures_P : SEQUENCE_QtAda6_QtWidgets_QGesture) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureEvent");
      List  := List_New (gestures_P'Length);
      for ind in gestures_P'Range loop
         List_SetItem
           (List, ssize_t (ind - gestures_P'First),
            (if gestures_P (ind) /= null then gestures_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure accept_K (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "accept");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end accept_K;
   procedure accept_K (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "accept");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end accept_K;
   procedure accept_K (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QGesture.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "accept");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end accept_K;
   function activeGestures (self : access Inst) return LIST_QtAda6_QtWidgets_QGesture is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "activeGestures");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end activeGestures;
   function canceledGestures (self : access Inst) return LIST_QtAda6_QtWidgets_QGesture is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canceledGestures");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end canceledGestures;
   function gesture
     (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class)
      return access QtAda6.QtWidgets.QGesture.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QGesture.Class := new QtAda6.QtWidgets.QGesture.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "gesture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end gesture;
   function gestures (self : access Inst) return LIST_QtAda6_QtWidgets_QGesture is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "gestures");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end gestures;
   procedure ignore (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ignore");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end ignore;
   procedure ignore (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ignore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end ignore;
   procedure ignore (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QGesture.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ignore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end ignore;
   function isAccepted (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAccepted");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAccepted;
   function isAccepted (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAccepted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAccepted;
   function isAccepted (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QGesture.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAccepted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAccepted;
   function mapToGraphicsScene
     (self           : access Inst;
      gesturePoint_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToGraphicsScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if gesturePoint_P /= null then gesturePoint_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToGraphicsScene;
   procedure setAccepted (self : access Inst; accepted_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAccepted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (accepted_P));
      Result := Object_CallObject (Method, Args, True);
   end setAccepted;
   procedure setAccepted (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class; arg_2_P : bool)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAccepted");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (arg_2_P));
      Result := Object_CallObject (Method, Args, True);
   end setAccepted;
   procedure setAccepted (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QGesture.Inst'Class; arg_2_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAccepted");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (arg_2_P));
      Result := Object_CallObject (Method, Args, True);
   end setAccepted;
   procedure setWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setWidget;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "widget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end widget;
end QtAda6.QtWidgets.QGestureEvent;
