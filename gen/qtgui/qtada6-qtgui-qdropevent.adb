-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qdropevent.adb
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
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QDropEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QDropEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDropEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P       : access QtAda6.QtCore.QPointF.Inst'Class; actions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;
      data_P : access QtAda6.QtCore.QMimeData.Inst'Class; buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDropEvent");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if actions_P /= null then actions_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P       : access QtAda6.QtCore.QPoint.Inst'Class; actions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;
      data_P : access QtAda6.QtCore.QMimeData.Inst'Class; buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDropEvent");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if actions_P /= null then actions_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      actions_P   : access QtAda6.QtCore.Qt.DropAction.Inst'Class; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDropEvent");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if actions_P /= null then actions_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   procedure acceptProposedAction (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "acceptProposedAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end acceptProposedAction;
   function buttons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseButton.Class := new QtAda6.QtCore.Qt.MouseButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "buttons");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buttons;
   function clone (self : access Inst) return access QtAda6.QtGui.QDropEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QDropEvent.Class := new QtAda6.QtGui.QDropEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function dropAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "dropAction");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dropAction;
   function keyboardModifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.KeyboardModifier.Class := new QtAda6.QtCore.Qt.KeyboardModifier.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "keyboardModifiers");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end keyboardModifiers;
   function mimeData (self : access Inst) return access QtAda6.QtCore.QMimeData.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mimeData");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeData;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.KeyboardModifier.Class := new QtAda6.QtCore.Qt.KeyboardModifier.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "modifiers");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end modifiers;
   function mouseButtons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseButton.Class := new QtAda6.QtCore.Qt.MouseButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mouseButtons");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mouseButtons;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   function posF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "posF");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end posF;
   function position (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "position");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end position;
   function possibleActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "possibleActions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end possibleActions;
   function proposedAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "proposedAction");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end proposedAction;
   procedure setDropAction (self : access Inst; action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDropAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDropAction;
   function source (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "source");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end source;
end QtAda6.QtGui.QDropEvent;
