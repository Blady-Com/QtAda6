-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qsyntaxhighlighter.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextBlock;
with QtAda6.QtGui.QTextBlockUserData;
with QtAda6.QtGui.QTextCharFormat;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QFont;
package body QtAda6.QtGui.QSyntaxHighlighter is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSyntaxHighlighter");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,parent_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(parent_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSyntaxHighlighter");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,parent_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function currentBlock(self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "currentBlock");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function currentBlockState(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "currentBlockState");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function currentBlockUserData(self : access Inst) return access QtAda6.QtGui.QTextBlockUserData.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QTextBlockUserData.Class := new QtAda6.QtGui.QTextBlockUserData.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "currentBlockUserData");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function document(self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QTextDocument.Class := new QtAda6.QtGui.QTextDocument.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "document");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function format(self : access Inst;pos_P : int) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "format");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (pos_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure highlightBlock(self : access Inst;text_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "highlightBlock");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
end;
function previousBlockState(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "previousBlockState");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
procedure rehighlight(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "rehighlight");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
procedure rehighlightBlock(self : access Inst;block_P : access QtAda6.QtGui.QTextBlock.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "rehighlightBlock");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,block_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setCurrentBlockState(self : access Inst;newState_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCurrentBlockState");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (newState_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setCurrentBlockUserData(self : access Inst;data_P : access QtAda6.QtGui.QTextBlockUserData.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCurrentBlockUserData");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,data_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setDocument(self : access Inst;doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setDocument");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,doc_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFormat(self : access Inst;start_P : int;count_P : int;color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (start_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Tuple_SetItem (Args, 2,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFormat(self : access Inst;start_P : int;count_P : int;font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (start_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Tuple_SetItem (Args, 2,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFormat(self : access Inst;start_P : int;count_P : int;format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (start_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Tuple_SetItem (Args, 2,format_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QSyntaxHighlighter;
