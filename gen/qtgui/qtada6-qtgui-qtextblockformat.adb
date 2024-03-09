-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextblockformat.adb
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
with QtAda6.QtGui.QTextBlockFormat;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QTextBlockFormat.MarkerType;
with QtAda6.QtGui.QTextFormat.PageBreakFlag;
with QtAda6.QtGui.QTextOption.Tab;
package body QtAda6.QtGui.QTextBlockFormat is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QTextBlockFormat_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QTextBlockFormat_P /= null then QTextBlockFormat_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fmt_P /= null then fmt_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function bottomMargin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottomMargin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end bottomMargin;
   function headingLevel (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "headingLevel");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end headingLevel;
   function indent (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end indent;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function leftMargin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leftMargin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end leftMargin;
   function lineHeight (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineHeight");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end lineHeight;
   function lineHeight (self : access Inst; scriptLineHeight_P : float; scaling_P : float) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (scriptLineHeight_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (scaling_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end lineHeight;
   function lineHeightType (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineHeightType");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end lineHeightType;
   function marker (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.MarkerType.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QTextBlockFormat.MarkerType.Class :=
        new QtAda6.QtGui.QTextBlockFormat.MarkerType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "marker");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end marker;
   function nonBreakableLines (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nonBreakableLines");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end nonBreakableLines;
   function pageBreakPolicy (self : access Inst) return access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFormat.PageBreakFlag.Class := new QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageBreakPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageBreakPolicy;
   function rightMargin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rightMargin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end rightMargin;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAlignment;
   procedure setBottomMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBottomMargin;
   procedure setHeadingLevel (self : access Inst; alevel_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeadingLevel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (alevel_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHeadingLevel;
   procedure setIndent (self : access Inst; indent_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIndent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (indent_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIndent;
   procedure setLeftMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLeftMargin;
   procedure setLineHeight (self : access Inst; height_P : float; heightType_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLineHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (height_P));
      Tuple_SetItem (Args, 1, Long_FromLong (heightType_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLineHeight;
   procedure setMarker (self : access Inst; marker_P : access QtAda6.QtGui.QTextBlockFormat.MarkerType.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMarker");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if marker_P /= null then marker_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMarker;
   procedure setNonBreakableLines (self : access Inst; b_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNonBreakableLines");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setNonBreakableLines;
   procedure setPageBreakPolicy (self : access Inst; flags_P : access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageBreakPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPageBreakPolicy;
   procedure setRightMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRightMargin;
   procedure setTabPositions (self : access Inst; tabs_P : SEQUENCE_QtAda6_QtGui_QTextOption_Tab) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabPositions");
      List   := List_New (tabs_P'Length);
      for ind in tabs_P'Range loop
         List_SetItem
           (List, ssize_t (ind - tabs_P'First), (if tabs_P (ind) /= null then tabs_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTabPositions;
   procedure setTextIndent (self : access Inst; aindent_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextIndent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (aindent_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTextIndent;
   procedure setTopMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTopMargin;
   function tabPositions (self : access Inst) return LIST_QtAda6_QtGui_QTextOption_Tab is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabPositions");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end tabPositions;
   function textIndent (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textIndent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end textIndent;
   function topMargin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "topMargin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end topMargin;
end QtAda6.QtGui.QTextBlockFormat;
