-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qmessagebox.adb
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
with QtAda6.QtWidgets.QMessageBox.Icon;
with QtAda6.QtWidgets.QMessageBox.StandardButton;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtWidgets.QAbstractButton;
with QtAda6.QtWidgets.QMessageBox.ButtonRole;
with QtAda6.QtWidgets.QPushButton;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QCheckBox;
with QtAda6.QtGui.QCloseEvent;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.Qt.TextFormat;
with QtAda6.QtCore.Qt.TextInteractionFlag;
with QtAda6.QtCore.Qt.WindowModality;
with QtAda6.QtGui.QShowEvent;
package body QtAda6.QtWidgets.QMessageBox is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function buttonClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "buttonClicked"));
   end buttonClicked;
   function Create
     (icon_P    : access QtAda6.QtWidgets.QMessageBox.Icon.Inst'Class; title_P : str; text_P : str;
      buttons_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                    := null;
      flags_P   : access QtAda6.QtCore.Qt.WindowType.Inst'Class                 := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict := Dict_New;
      if buttons_P /= null then
         Dict_SetItemString (Dict, "buttons", buttons_P.Python_Proxy);
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure about (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "about");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end about;
   procedure aboutQt (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str := "") is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "aboutQt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if title_P /= "" then
         Dict_SetItemString (Dict, "title", Unicode_FromString (title_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end aboutQt;
   procedure addButton
     (self   : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
      role_P : access QtAda6.QtWidgets.QMessageBox.ButtonRole.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addButton");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if role_P /= null then role_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addButton;
   function addButton
     (self : access Inst; button_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QPushButton.Class := new QtAda6.QtWidgets.QPushButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addButton;
   function addButton
     (self : access Inst; text_P : str; role_P : access QtAda6.QtWidgets.QMessageBox.ButtonRole.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QPushButton.Class := new QtAda6.QtWidgets.QPushButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addButton");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if role_P /= null then role_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addButton;
   function button
     (self : access Inst; which_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class)
      return access QtAda6.QtWidgets.QAbstractButton.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractButton.Class := new QtAda6.QtWidgets.QAbstractButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "button");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end button;
   function buttonRole_F
     (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
      return access QtAda6.QtWidgets.QMessageBox.ButtonRole.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMessageBox.ButtonRole.Class := new QtAda6.QtWidgets.QMessageBox.ButtonRole.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttonRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buttonRole_F;
   function buttonText (self : access Inst; button_P : int) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttonText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (button_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end buttonText;
   function buttons (self : access Inst) return LIST_QtAda6_QtWidgets_QAbstractButton is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttons");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtWidgets_QAbstractButton (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end buttons;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   function checkBox (self : access Inst) return access QtAda6.QtWidgets.QCheckBox.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QCheckBox.Class := new QtAda6.QtWidgets.QCheckBox.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "checkBox");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end checkBox;
   function clickedButton (self : access Inst) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractButton.Class := new QtAda6.QtWidgets.QAbstractButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clickedButton");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clickedButton;
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end closeEvent;
   function critical
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      button0_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
      button1_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class) return int
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "critical");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 3, (if button0_P /= null then button0_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if button1_P /= null then button1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end critical;
   function critical
     (parent_P        : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      buttons_P       : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;
      defaultButton_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMessageBox.StandardButton.Class :=
        new QtAda6.QtWidgets.QMessageBox.StandardButton.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "critical");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict := Dict_New;
      if buttons_P /= null then
         Dict_SetItemString (Dict, "buttons", buttons_P.Python_Proxy);
      end if;
      if defaultButton_P /= null then
         Dict_SetItemString (Dict, "defaultButton", defaultButton_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end critical;
   function defaultButton (self : access Inst) return access QtAda6.QtWidgets.QPushButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QPushButton.Class := new QtAda6.QtWidgets.QPushButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "defaultButton");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultButton;
   function detailedText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "detailedText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end detailedText;
   function escapeButton (self : access Inst) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractButton.Class := new QtAda6.QtWidgets.QAbstractButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "escapeButton");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end escapeButton;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function icon_F (self : access Inst) return access QtAda6.QtWidgets.QMessageBox.Icon.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMessageBox.Icon.Class := new QtAda6.QtWidgets.QMessageBox.Icon.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "icon");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end icon_F;
   function iconPixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "iconPixmap");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end iconPixmap;
   function information
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      button0_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
      button1_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMessageBox.StandardButton.Class :=
        new QtAda6.QtWidgets.QMessageBox.StandardButton.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "information");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 3, (if button0_P /= null then button0_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if button1_P /= null then
         Dict_SetItemString (Dict, "button1", button1_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end information;
   function informativeText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "informativeText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end informativeText;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyPressEvent;
   procedure open (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end open;
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (member_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end open;
   function question
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      button0_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
      button1_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class) return int
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "question");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 3, (if button0_P /= null then button0_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if button1_P /= null then button1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end question;
   function question
     (parent_P        : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      buttons_P       : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;
      defaultButton_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMessageBox.StandardButton.Class :=
        new QtAda6.QtWidgets.QMessageBox.StandardButton.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "question");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict := Dict_New;
      if buttons_P /= null then
         Dict_SetItemString (Dict, "buttons", buttons_P.Python_Proxy);
      end if;
      if defaultButton_P /= null then
         Dict_SetItemString (Dict, "defaultButton", defaultButton_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end question;
   procedure removeButton (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeButton;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   procedure setButtonText (self : access Inst; button_P : int; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setButtonText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (button_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setButtonText;
   procedure setCheckBox (self : access Inst; cb_P : access QtAda6.QtWidgets.QCheckBox.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCheckBox");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cb_P /= null then cb_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCheckBox;
   procedure setDefaultButton
     (self : access Inst; button_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDefaultButton;
   procedure setDefaultButton (self : access Inst; button_P : access QtAda6.QtWidgets.QPushButton.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDefaultButton;
   procedure setDetailedText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDetailedText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDetailedText;
   procedure setEscapeButton (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEscapeButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEscapeButton;
   procedure setEscapeButton
     (self : access Inst; button_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEscapeButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEscapeButton;
   procedure setIcon (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QMessageBox.Icon.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIcon;
   procedure setIconPixmap (self : access Inst; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIconPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIconPixmap;
   procedure setIconPixmap (self : access Inst; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIconPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIconPixmap;
   procedure setIconPixmap (self : access Inst; pixmap_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIconPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pixmap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIconPixmap;
   procedure setInformativeText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInformativeText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInformativeText;
   procedure setStandardButtons
     (self : access Inst; buttons_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStandardButtons");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardButtons;
   procedure setText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setText;
   procedure setTextFormat (self : access Inst; format_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTextFormat;
   procedure setTextInteractionFlags
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextInteractionFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTextInteractionFlags;
   procedure setWindowModality
     (self : access Inst; windowModality_P : access QtAda6.QtCore.Qt.WindowModality.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowModality");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if windowModality_P /= null then windowModality_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowModality;
   procedure setWindowTitle (self : access Inst; title_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowTitle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (title_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowTitle;
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showEvent;
   function standardButton_F
     (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtWidgets.QMessageBox.StandardButton.Class :=
        new QtAda6.QtWidgets.QMessageBox.StandardButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standardButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardButton_F;
   function standardButtons (self : access Inst) return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtWidgets.QMessageBox.StandardButton.Class :=
        new QtAda6.QtWidgets.QMessageBox.StandardButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "standardButtons");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardButtons;
   function standardIcon
     (icon_P : access QtAda6.QtWidgets.QMessageBox.Icon.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "standardIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardIcon;
   function text (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end text;
   function textFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TextFormat.Class := new QtAda6.QtCore.Qt.TextFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textFormat");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textFormat;
   function textInteractionFlags (self : access Inst) return access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TextInteractionFlag.Class := new QtAda6.QtCore.Qt.TextInteractionFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textInteractionFlags");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textInteractionFlags;
   function warning
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      button0_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
      button1_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class) return int
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "warning");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 3, (if button0_P /= null then button0_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if button1_P /= null then button1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end warning;
   function warning
     (parent_P        : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      buttons_P       : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;
      defaultButton_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMessageBox.StandardButton.Class :=
        new QtAda6.QtWidgets.QMessageBox.StandardButton.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Method := Object_GetAttrString (Class, "warning");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict := Dict_New;
      if buttons_P /= null then
         Dict_SetItemString (Dict, "buttons", buttons_P.Python_Proxy);
      end if;
      if defaultButton_P /= null then
         Dict_SetItemString (Dict, "defaultButton", defaultButton_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end warning;
end QtAda6.QtWidgets.QMessageBox;
