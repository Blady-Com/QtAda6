-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qfontcombobox.adb
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
with QtAda6.QtWidgets.QComboBox;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtGui.QFont;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QFontComboBox.FontFilter;
with QtAda6.QtGui.QFontDatabase.WritingSystem;
with QtAda6.QtCore.QSize;
package body QtAda6.QtWidgets.QFontComboBox is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontComboBox");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function currentFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentFont");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentFont;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, e_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function fontFilters (self : access Inst) return access QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QFontComboBox.FontFilter.Class :=
        new QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontFilters");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontFilters;
   function sampleTextForFont (self : access Inst; fontFamily_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sampleTextForFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fontFamily_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end sampleTextForFont;
   function sampleTextForSystem
     (self : access Inst; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sampleTextForSystem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, writingSystem_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end sampleTextForSystem;
   procedure setCurrentFont (self : access Inst; f_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setCurrentFont;
   procedure setDisplayFont (self : access Inst; fontFamily_P : str; font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisplayFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fontFamily_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setDisplayFont;
   procedure setFontFilters
     (self : access Inst; filters_P : access QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontFilters");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filters_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFontFilters;
   procedure setSampleTextForFont (self : access Inst; fontFamily_P : str; sampleText_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSampleTextForFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fontFamily_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (sampleText_P));
      Result := Object_CallObject (Method, Args, True);
   end setSampleTextForFont;
   procedure setSampleTextForSystem
     (self         : access Inst; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class;
      sampleText_P : str)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSampleTextForSystem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, writingSystem_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (sampleText_P));
      Result := Object_CallObject (Method, Args, True);
   end setSampleTextForSystem;
   procedure setWritingSystem (self : access Inst; arg_1_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWritingSystem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setWritingSystem;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function writingSystem (self : access Inst) return access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFontDatabase.WritingSystem.Class :=
        new QtAda6.QtGui.QFontDatabase.WritingSystem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "writingSystem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end writingSystem;
end QtAda6.QtWidgets.QFontComboBox;
