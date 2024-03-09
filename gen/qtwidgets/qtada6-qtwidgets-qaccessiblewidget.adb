-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qaccessiblewidget.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtGui.QAccessible.Role;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QAccessibleInterface;
with QtAda6.QtGui.QAccessible.InterfaceType;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QAccessible.RelationFlag;
with QtAda6.QtGui.QAccessible.State;
with QtAda6.QtGui.QAccessible.Text;
with QtAda6.QtGui.QWindow;
package body QtAda6.QtWidgets.QAccessibleWidget is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (o_P : access QtAda6.QtWidgets.QWidget.Inst'Class; r_P : access QtAda6.QtGui.QAccessible.Role.Inst'Class := null;
      name_P : str := "") return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAccessibleWidget");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if o_P /= null then o_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if r_P /= null then
         Dict_SetItemString (Dict, "r", r_P.Python_Proxy);
      end if;
      if name_P /= "" then
         Dict_SetItemString (Dict, "name", Unicode_FromString (name_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function actionNames (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actionNames");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end actionNames;
   procedure addControllingSignal (self : access Inst; signal_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addControllingSignal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (signal_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addControllingSignal;
   function backgroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundColor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundColor;
   function child (self : access Inst; index_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "child");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end child;
   function childCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end childCount;
   procedure doAction (self : access Inst; actionName_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (actionName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end doAction;
   function focusChild (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusChild");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusChild;
   function foregroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "foregroundColor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end foregroundColor;
   function indexOfChild (self : access Inst; child_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end indexOfChild;
   function interface_cast
     (self : access Inst; t_P : access QtAda6.QtGui.QAccessible.InterfaceType.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "interface_cast");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if t_P /= null then t_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end interface_cast;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function keyBindingsForAction (self : access Inst; actionName_P : str) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyBindingsForAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (actionName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end keyBindingsForAction;
   function parent (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parent");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function parentObject (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parentObject");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parentObject;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function relations
     (self : access Inst; match_P : access QtAda6.QtGui.QAccessible.RelationFlag.Inst'Class := null)
      return LIST_TUPLE_QtAda6_QtGui_QAccessibleInterface_QtAda6_QtGui_QAccessible_RelationFlag
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "relations");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if match_P /= null then
         Dict_SetItemString (Dict, "match", match_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end relations;
   function role (self : access Inst) return access QtAda6.QtGui.QAccessible.Role.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessible.Role.Class := new QtAda6.QtGui.QAccessible.Role.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "role");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end role;
   function state (self : access Inst) return access QtAda6.QtGui.QAccessible.State.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessible.State.Class := new QtAda6.QtGui.QAccessible.State.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state;
   function text (self : access Inst; t_P : access QtAda6.QtGui.QAccessible.Text.Inst'Class) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if t_P /= null then t_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end text;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "widget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end widget;
   function window (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "window");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end window;
end QtAda6.QtWidgets.QAccessibleWidget;
