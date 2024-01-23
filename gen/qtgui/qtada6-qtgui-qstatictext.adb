-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qstatictext.adb
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
with QtAda6.QtGui.QStaticText.PerformanceHint;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QFont;
with QtAda6.QtCore.Qt.TextFormat;
with QtAda6.QtGui.QTextOption;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.QSizeF;
package body QtAda6.QtGui.QStaticText is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStaticText");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QStaticText.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStaticText");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (text_P : str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStaticText");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStaticText");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function performanceHint_F (self : access Inst) return access QtAda6.QtGui.QStaticText.PerformanceHint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QStaticText.PerformanceHint.Class :=
        new QtAda6.QtGui.QStaticText.PerformanceHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "performanceHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end performanceHint_F;
   procedure prepare
     (self   : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class := null;
      font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if matrix_P /= null then matrix_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end prepare;
   procedure setPerformanceHint
     (self : access Inst; performanceHint_P : access QtAda6.QtGui.QStaticText.PerformanceHint.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPerformanceHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if performanceHint_P /= null then performanceHint_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPerformanceHint;
   procedure setText (self : access Inst; text_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setText;
   procedure setTextFormat (self : access Inst; textFormat_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if textFormat_P /= null then textFormat_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTextFormat;
   procedure setTextOption
     (self : access Inst; textOption_P : UNION_QtAda6_QtGui_QTextOptionQtAda6_QtCore_Qt_AlignmentFlag)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if textOption_P /= null then textOption_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTextOption;
   procedure setTextWidth (self : access Inst; textWidth_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (textWidth_P));
      Result := Object_CallObject (Method, Args, True);
   end setTextWidth;
   function size (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QStaticText.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function text (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
   function textFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.TextFormat.Class := new QtAda6.QtCore.Qt.TextFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textFormat;
   function textOption (self : access Inst) return access QtAda6.QtGui.QTextOption.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextOption.Class := new QtAda6.QtGui.QTextOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textOption");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textOption;
   function textWidth (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end textWidth;
end QtAda6.QtGui.QStaticText;
