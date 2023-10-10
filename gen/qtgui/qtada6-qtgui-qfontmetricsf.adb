-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfontmetricsf.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with py; use py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QFontMetrics;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QTextOption;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.Qt.TextElideMode;
with QtAda6.QtCore.QSizeF;
package body QtAda6.QtGui.QFontMetricsF is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(arg_1_P : access QtAda6.QtGui.QFontMetrics.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontMetricsF");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(arg_1_P : Union_QtAda6_QtGui_QFontMetricsF_QtAda6_QtGui_QFontMetrics) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontMetricsF");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontMetricsF");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str;pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontMetricsF");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,pd_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
procedure U_copy_U is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontMetricsF");
  Method := Object_GetAttrString (Class, "__copy__");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function ascent(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "ascent");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function averageCharWidth(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "averageCharWidth");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function boundingRect(self : access Inst;r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;flags_P : int;string_P : str;tabstops_P : int;tabarray_P : object) return access QtAda6.QtCore.QRectF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
  Args   := Tuple_New ( 5);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Long_FromLong (flags_P));
  Tuple_SetItem (Args, 2,Unicode_FromString (string_P));
  Tuple_SetItem (Args, 3,Long_FromLong (tabstops_P));
  Tuple_SetItem (Args, 4,tabarray_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function boundingRect(self : access Inst;string_P : str) return access QtAda6.QtCore.QRectF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (string_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function boundingRect(self : access Inst;text_P : str;textOption_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag) return access QtAda6.QtCore.QRectF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function boundingRectChar(self : access Inst;arg_1_P : int) return access QtAda6.QtCore.QRectF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "boundingRectChar");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function capHeight(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "capHeight");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function descent(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "descent");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function elidedText(self : access Inst;text_P : str;mode_P : access QtAda6.QtCore.Qt.TextElideMode.Inst'Class;width_P : float;flags_P : int) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "elidedText");
  Args   := Tuple_New ( 4);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Tuple_SetItem (Args, 1,mode_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Float_FromDouble (width_P));
  Tuple_SetItem (Args, 3,Long_FromLong (flags_P));
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function fontDpi(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "fontDpi");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function height(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "height");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function horizontalAdvance(self : access Inst;string_P : str;length_P : int) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "horizontalAdvance");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Unicode_FromString (string_P));
  Tuple_SetItem (Args, 1,Long_FromLong (length_P));
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function horizontalAdvance(self : access Inst;string_P : str;textOption_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "horizontalAdvance");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Unicode_FromString (string_P));
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function horizontalAdvanceChar(self : access Inst;arg_1_P : int) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "horizontalAdvanceChar");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function inFont(self : access Inst;arg_1_P : str) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "inFont");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function inFontUcs4(self : access Inst;ucs4_P : int) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "inFontUcs4");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (ucs4_P));
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function leading(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "leading");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function leftBearing(self : access Inst;arg_1_P : str) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "leftBearing");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function lineSpacing(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "lineSpacing");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function lineWidth(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "lineWidth");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function maxWidth(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "maxWidth");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function minLeftBearing(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "minLeftBearing");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function minRightBearing(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "minRightBearing");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function overlinePos(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "overlinePos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function rightBearing(self : access Inst;arg_1_P : str) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "rightBearing");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function size(self : access Inst;flags_P : int;str_P : str;tabstops_P : int;tabarray_P : object) return access QtAda6.QtCore.QSizeF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "size");
  Args   := Tuple_New ( 4);
  Tuple_SetItem (Args, 0,Long_FromLong (flags_P));
  Tuple_SetItem (Args, 1,Unicode_FromString (str_P));
  Tuple_SetItem (Args, 2,Long_FromLong (tabstops_P));
  Tuple_SetItem (Args, 3,tabarray_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function strikeOutPos(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "strikeOutPos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
procedure swap(self : access Inst;other_P : Union_QtAda6_QtGui_QFontMetricsF_QtAda6_QtGui_QFontMetrics) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "swap");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
function tightBoundingRect(self : access Inst;text_P : str) return access QtAda6.QtCore.QRectF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "tightBoundingRect");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function tightBoundingRect(self : access Inst;text_P : str;textOption_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag) return access QtAda6.QtCore.QRectF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "tightBoundingRect");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function underlinePos(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "underlinePos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function xHeight(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "xHeight");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
end QtAda6.QtGui.QFontMetricsF;
