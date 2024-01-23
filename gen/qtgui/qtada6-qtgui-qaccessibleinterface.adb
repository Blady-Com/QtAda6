-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessibleinterface.adb
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
with QtAda6.QtGui.QAccessibleActionInterface;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QAccessibleEditableTextInterface;
with QtAda6.QtGui.QAccessible.InterfaceType;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QAccessible.RelationFlag;
with QtAda6.QtGui.QAccessible.Role;
with QtAda6.QtGui.QAccessible.Text;
with QtAda6.QtGui.QAccessible.State;
with QtAda6.QtGui.QAccessibleTableCellInterface;
with QtAda6.QtGui.QAccessibleTextInterface;
with QtAda6.QtGui.QAccessibleValueInterface;
with QtAda6.QtGui.QWindow;
package body QtAda6.QtGui.QAccessibleInterface is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleInterface");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function actionInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleActionInterface.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleActionInterface.Class := new QtAda6.QtGui.QAccessibleActionInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "actionInterface");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end actionInterface;
   function backgroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundColor");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundColor;
   function child (self : access Inst; index_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "child");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end child;
   function childAt
     (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end childAt;
   function childCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end childCount;
   function editableTextInterface
     (self : access Inst) return access QtAda6.QtGui.QAccessibleEditableTextInterface.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QAccessibleEditableTextInterface.Class :=
        new QtAda6.QtGui.QAccessibleEditableTextInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "editableTextInterface");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end editableTextInterface;
   function focusChild (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusChild");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusChild;
   function foregroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "foregroundColor");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end foregroundColor;
   function indexOfChild (self : access Inst; arg_1_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfChild;
   function interface_cast
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QAccessible.InterfaceType.Inst'Class) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "interface_cast");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end interface_cast;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function object (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "object");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end object;
   function parent (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parent");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function relations
     (self : access Inst; match_P : access QtAda6.QtGui.QAccessible.RelationFlag.Inst'Class := null)
      return LIST_TUPLE_QtAda6_QtGui_QAccessibleInterfaceQtAda6_QtGui_QAccessible_RelationFlag
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "relations");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if match_P /= null then match_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end relations;
   function role (self : access Inst) return access QtAda6.QtGui.QAccessible.Role.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessible.Role.Class := new QtAda6.QtGui.QAccessible.Role.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "role");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end role;
   procedure setText (self : access Inst; t_P : access QtAda6.QtGui.QAccessible.Text.Inst'Class; text_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if t_P /= null then t_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setText;
   function state (self : access Inst) return access QtAda6.QtGui.QAccessible.State.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessible.State.Class := new QtAda6.QtGui.QAccessible.State.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state;
   function tableCellInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleTableCellInterface.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QAccessibleTableCellInterface.Class :=
        new QtAda6.QtGui.QAccessibleTableCellInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "tableCellInterface");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end tableCellInterface;
   function text (self : access Inst; t_P : access QtAda6.QtGui.QAccessible.Text.Inst'Class) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if t_P /= null then t_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
   function textInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleTextInterface.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleTextInterface.Class := new QtAda6.QtGui.QAccessibleTextInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textInterface");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textInterface;
   function valueInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleValueInterface.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleValueInterface.Class := new QtAda6.QtGui.QAccessibleValueInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "valueInterface");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end valueInterface;
   procedure virtual_hook (self : access Inst; id_P : int; data_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "virtual_hook");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Tuple_SetItem (Args, 1, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
   end virtual_hook;
   function window (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "window");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end window;
end QtAda6.QtGui.QAccessibleInterface;
