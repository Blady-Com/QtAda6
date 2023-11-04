-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qdialogbuttonbox.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QDialogButtonBox.StandardButton;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QAbstractButton;
with QtAda6.QtWidgets.QDialogButtonBox.ButtonRole;
with QtAda6.QtWidgets.QPushButton;
with QtAda6.QtCore.QEvent;
package body QtAda6.QtWidgets.QDialogButtonBox is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (buttons_P     : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, buttons_P.Python_Proxy);
      Tuple_SetItem (Args, 1, orientation_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (buttons_P : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class;
      parent_P  : Optional_QtAda6_QtWidgets_QWidget) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, buttons_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, orientation_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addButton
     (self   : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
      role_P : access QtAda6.QtWidgets.QDialogButtonBox.ButtonRole.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addButton");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, button_P.Python_Proxy);
      Tuple_SetItem (Args, 1, role_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end addButton;
   function addButton
     (self : access Inst; button_P : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QPushButton.Class := new QtAda6.QtWidgets.QPushButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, button_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addButton;
   function addButton
     (self : access Inst; text_P : str; role_P : access QtAda6.QtWidgets.QDialogButtonBox.ButtonRole.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QPushButton.Class := new QtAda6.QtWidgets.QPushButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addButton");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, role_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addButton;
   function button_F
     (self : access Inst; which_P : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QPushButton.Class := new QtAda6.QtWidgets.QPushButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "button");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, which_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end button_F;
   function buttonRole_F
     (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
      return access QtAda6.QtWidgets.QDialogButtonBox.ButtonRole.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QDialogButtonBox.ButtonRole.Class :=
        new QtAda6.QtWidgets.QDialogButtonBox.ButtonRole.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttonRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, button_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buttonRole_F;
   function buttons (self : access Inst) return List_QtAda6_QtWidgets_QAbstractButton is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttons");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end buttons;
   function centerButtons (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "centerButtons");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end centerButtons;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end changeEvent;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation;
   procedure removeButton (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, button_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end removeButton;
   procedure setCenterButtons (self : access Inst; center_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenterButtons");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (center_P));
      Result := Object_CallObject (Method, Args, True);
   end setCenterButtons;
   procedure setOrientation (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, orientation_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setOrientation;
   procedure setStandardButtons
     (self : access Inst; buttons_P : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStandardButtons");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, buttons_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setStandardButtons;
   function standardButton_F
     (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
      return access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Class :=
        new QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standardButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, button_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardButton_F;
   function standardButtons
     (self : access Inst) return access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Class :=
        new QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "standardButtons");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardButtons;
end QtAda6.QtWidgets.QDialogButtonBox;
