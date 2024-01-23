-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextblock.adb
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
with QtAda6.QtGui.QTextBlock.iterator;
with QtAda6.QtGui.QTextBlockFormat;
with QtAda6.QtGui.QTextCharFormat;
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextLayout;
with QtAda6.QtGui.QTextBlockUserData;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtGui.QTextLayout.FormatRange;
with QtAda6.QtGui.QTextList;
package body QtAda6.QtGui.QTextBlock is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlock");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (o_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlock");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if o_P /= null then o_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlock");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iter_U (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iter__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_iter_U;
   function begin_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.iterator.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextBlock.iterator.Class := new QtAda6.QtGui.QTextBlock.iterator.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "begin");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end begin_K;
   function blockFormat (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextBlockFormat.Class := new QtAda6.QtGui.QTextBlockFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "blockFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockFormat;
   function blockFormatIndex (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockFormatIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end blockFormatIndex;
   function blockNumber (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end blockNumber;
   function charFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "charFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end charFormat;
   function charFormatIndex (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "charFormatIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end charFormatIndex;
   procedure clearLayout (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearLayout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearLayout;
   function contains (self : access Inst; position_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (position_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextDocument.Class := new QtAda6.QtGui.QTextDocument.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "document");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end document;
   function end_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.iterator.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextBlock.iterator.Class := new QtAda6.QtGui.QTextBlock.iterator.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "end");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end end_K;
   function firstLineNumber (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "firstLineNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end firstLineNumber;
   function fragmentIndex (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fragmentIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end fragmentIndex;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function isVisible (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isVisible;
   function layout (self : access Inst) return access QtAda6.QtGui.QTextLayout.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextLayout.Class := new QtAda6.QtGui.QTextLayout.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "layout");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layout;
   function length (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end length;
   function lineCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lineCount;
   function next (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "next");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end next;
   function position (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "position");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end position;
   function previous (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "previous");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end previous;
   function revision (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "revision");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end revision;
   procedure setLineCount (self : access Inst; count_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLineCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (count_P));
      Result := Object_CallObject (Method, Args, True);
   end setLineCount;
   procedure setRevision (self : access Inst; rev_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRevision");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rev_P));
      Result := Object_CallObject (Method, Args, True);
   end setRevision;
   procedure setUserData (self : access Inst; data_P : access QtAda6.QtGui.QTextBlockUserData.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUserData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setUserData;
   procedure setUserState (self : access Inst; state_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUserState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (state_P));
      Result := Object_CallObject (Method, Args, True);
   end setUserState;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Result := Object_CallObject (Method, Args, True);
   end setVisible;
   function text (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textDirection;
   function textFormats (self : access Inst) return LIST_QtAda6_QtGui_QTextLayout_FormatRange is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textFormats");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end textFormats;
   function textList (self : access Inst) return access QtAda6.QtGui.QTextList.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textList");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textList;
   function userData (self : access Inst) return access QtAda6.QtGui.QTextBlockUserData.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextBlockUserData.Class := new QtAda6.QtGui.QTextBlockUserData.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "userData");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end userData;
   function userState (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "userState");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end userState;
end QtAda6.QtGui.QTextBlock;
