-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qdrag.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtGui.QImage;
package body QtAda6.QtGui.QDrag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function actionChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "actionChanged"));
   end actionChanged;
   function targetChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "targetChanged"));
   end targetChanged;
   function Create (dragSource_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDrag");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dragSource_P /= null then dragSource_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure cancel is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDrag");
      Method := Object_GetAttrString (Class, "cancel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cancel;
   function defaultAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "defaultAction");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultAction;
   function dragCursor
     (self : access Inst; action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dragCursor;
   function exec
     (self            : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;
      defaultAction_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class)
      return access QtAda6.QtCore.Qt.DropAction.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if supportedActions_P /= null then supportedActions_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if defaultAction_P /= null then defaultAction_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end exec;
   function exec
     (self : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class := null)
      return access QtAda6.QtCore.Qt.DropAction.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if supportedActions_P /= null then supportedActions_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end exec;
   function exec_U
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;
      arg_2_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return access QtAda6.QtCore.Qt.DropAction.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec_");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end exec_U;
   function exec_U
     (self : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class := null)
      return access QtAda6.QtCore.Qt.DropAction.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec_");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if supportedActions_P /= null then supportedActions_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end exec_U;
   function hotSpot (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "hotSpot");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hotSpot;
   function mimeData (self : access Inst) return access QtAda6.QtCore.QMimeData.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mimeData");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeData;
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   procedure setDragCursor
     (self     : access Inst; cursor_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDragCursor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cursor_P /= null then cursor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDragCursor;
   procedure setHotSpot (self : access Inst; hotspot_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHotSpot");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hotspot_P /= null then hotspot_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setHotSpot;
   procedure setMimeData (self : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMimeData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMimeData;
   procedure setPixmap (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPixmap;
   function source (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "source");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end source;
   function supportedActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "supportedActions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end supportedActions;
   function target (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "target");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end target;
end QtAda6.QtGui.QDrag;
