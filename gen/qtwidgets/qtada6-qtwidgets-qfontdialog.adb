-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qfontdialog.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QFont;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QFontDialog.FontDialogOption;
package body QtAda6.QtWidgets.QFontDialog is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function currentFontChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentFontChanged"));
   end currentFontChanged;
   function fontSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "fontSelected"));
   end fontSelected;
   function Create
     (initial_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontDialog");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if initial_P /= null then initial_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontDialog");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   function currentFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentFont");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentFont;
   procedure done (self : access Inst; result_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "done");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (result_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end done;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end eventFilter;
   function getFont
     (initial_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                      := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class := null) return TUPLE
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontDialog");
      Method := Object_GetAttrString (Class, "getFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if initial_P /= null then initial_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if title_P /= "" then
         Dict_SetItemString (Dict, "title", Unicode_FromString (title_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end getFont;
   function getFont (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return TUPLE is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontDialog");
      Method := Object_GetAttrString (Class, "getFont");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end getFont;
   procedure open (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end open;
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end open;
   function options (self : access Inst) return access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QFontDialog.FontDialogOption.Class :=
        new QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "options");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end options;
   function selectedFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selectedFont");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedFont;
   procedure setCurrentFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentFont;
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class;
      on_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if on_P /= False then
         Dict_SetItemString (Dict, "on", To_Python (on_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setOption;
   procedure setOptions
     (self : access Inst; options_P : access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOptions;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVisible;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end testOption;
end QtAda6.QtWidgets.QFontDialog;
