-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qfontcombobox.adb
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
with QtAda6.QtGui.QFont;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QFontComboBox.FontFilter;
with QtAda6.QtGui.QFontDatabase.WritingSystem;
with QtAda6.QtCore.QSize;
package body QtAda6.QtWidgets.QFontComboBox is
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
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontComboBox");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function currentFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentFont");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentFont;
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
   function fontFilters (self : access Inst) return access QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtWidgets.QFontComboBox.FontFilter.Class :=
        new QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontFilters");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontFilters;
   function sampleTextForFont (self : access Inst; fontFamily_P : str) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sampleTextForFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fontFamily_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end sampleTextForFont;
   function sampleTextForSystem
     (self : access Inst; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sampleTextForSystem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if writingSystem_P /= null then writingSystem_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end sampleTextForSystem;
   procedure setCurrentFont (self : access Inst; f_P : access QtAda6.QtGui.QFont.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentFont;
   procedure setCurrentFont (self : access Inst; f_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (f_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentFont;
   procedure setCurrentFont (self : access Inst; f_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentFont");
      Args   := Tuple_New (1);
      List   := List_New (f_P'Length);
      for ind in f_P'Range loop
         List_SetItem (List, ssize_t (ind - f_P'First), Unicode_FromString (f_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentFont;
   procedure setDisplayFont (self : access Inst; fontFamily_P : str; font_P : access QtAda6.QtGui.QFont.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisplayFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fontFamily_P));
      Tuple_SetItem (Args, 1, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDisplayFont;
   procedure setDisplayFont (self : access Inst; fontFamily_P : str; font_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisplayFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fontFamily_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (font_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDisplayFont;
   procedure setDisplayFont (self : access Inst; fontFamily_P : str; font_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisplayFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fontFamily_P));
      List := List_New (font_P'Length);
      for ind in font_P'Range loop
         List_SetItem (List, ssize_t (ind - font_P'First), Unicode_FromString (font_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDisplayFont;
   procedure setFontFilters
     (self : access Inst; filters_P : access QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontFilters");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if filters_P /= null then filters_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFontFilters;
   procedure setSampleTextForFont (self : access Inst; fontFamily_P : str; sampleText_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSampleTextForFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fontFamily_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (sampleText_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSampleTextForFont;
   procedure setSampleTextForSystem
     (self         : access Inst; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class;
      sampleText_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSampleTextForSystem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if writingSystem_P /= null then writingSystem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (sampleText_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSampleTextForSystem;
   procedure setWritingSystem (self : access Inst; arg_1_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWritingSystem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWritingSystem;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function writingSystem (self : access Inst) return access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QFontDatabase.WritingSystem.Class :=
        new QtAda6.QtGui.QFontDatabase.WritingSystem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "writingSystem");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end writingSystem;
end QtAda6.QtWidgets.QFontComboBox;
