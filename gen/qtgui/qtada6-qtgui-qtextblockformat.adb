-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextblockformat.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QTextBlockFormat.MarkerType;
with QtAda6.QtGui.QTextFormat.PageBreakFlag;
with QtAda6.QtGui.QTextOption.Tab;
package body QtAda6.QtGui.QTextBlockFormat is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QTextBlockFormat_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QTextBlockFormat_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, fmt_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function bottomMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottomMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end bottomMargin;
   function headingLevel (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "headingLevel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end headingLevel;
   function indent (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indent;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function leftMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leftMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end leftMargin;
   function lineHeight_F (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineHeight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end lineHeight_F;
   function lineHeight_F (self : access Inst; scriptLineHeight_P : float; scaling_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (scriptLineHeight_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (scaling_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end lineHeight_F;
   function lineHeightType_F (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineHeightType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lineHeightType_F;
   function marker_F (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.MarkerType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlockFormat.MarkerType.Class :=
        new QtAda6.QtGui.QTextBlockFormat.MarkerType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "marker");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end marker_F;
   function nonBreakableLines (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nonBreakableLines");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end nonBreakableLines;
   function pageBreakPolicy (self : access Inst) return access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFormat.PageBreakFlag.Class := new QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageBreakPolicy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageBreakPolicy;
   function rightMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rightMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rightMargin;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, alignment_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setAlignment;
   procedure setBottomMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setBottomMargin;
   procedure setHeadingLevel (self : access Inst; alevel_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeadingLevel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (alevel_P));
      Result := Object_CallObject (Method, Args, True);
   end setHeadingLevel;
   procedure setIndent (self : access Inst; indent_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIndent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (indent_P));
      Result := Object_CallObject (Method, Args, True);
   end setIndent;
   procedure setLeftMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setLeftMargin;
   procedure setLineHeight (self : access Inst; height_P : float; heightType_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLineHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (height_P));
      Tuple_SetItem (Args, 1, Long_FromLong (heightType_P));
      Result := Object_CallObject (Method, Args, True);
   end setLineHeight;
   procedure setMarker (self : access Inst; marker_P : access QtAda6.QtGui.QTextBlockFormat.MarkerType.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMarker");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, marker_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setMarker;
   procedure setNonBreakableLines (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNonBreakableLines");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setNonBreakableLines;
   procedure setPageBreakPolicy (self : access Inst; flags_P : access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageBreakPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPageBreakPolicy;
   procedure setRightMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setRightMargin;
   procedure setTabPositions (self : access Inst; tabs_P : Sequence_QtAda6_QtGui_QTextOption_Tab) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabPositions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setTabPositions;
   procedure setTextIndent (self : access Inst; aindent_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextIndent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (aindent_P));
      Result := Object_CallObject (Method, Args, True);
   end setTextIndent;
   procedure setTopMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setTopMargin;
   function tabPositions (self : access Inst) return List_QtAda6_QtGui_QTextOption_Tab is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabPositions");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end tabPositions;
   function textIndent (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textIndent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end textIndent;
   function topMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "topMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end topMargin;
end QtAda6.QtGui.QTextBlockFormat;
