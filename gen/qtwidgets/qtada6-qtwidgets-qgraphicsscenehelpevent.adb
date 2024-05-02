-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsscenehelpevent.adb
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
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtWidgets.QGraphicsSceneHelpEvent is
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
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsSceneHelpEvent");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function scenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scenePos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scenePos;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screenPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screenPos;
   procedure setScenePos (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScenePos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScenePos;
   procedure setScenePos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScenePos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScenePos;
   procedure setScenePos (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScenePos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScenePos;
   procedure setScreenPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScreenPos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScreenPos;
end QtAda6.QtWidgets.QGraphicsSceneHelpEvent;
