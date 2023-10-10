-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextcursor.adb
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
with QtAda6.QtGui.QTextBlock;
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextFrame;
with QtAda6.QtGui.QTextCharFormat;
with QtAda6.QtGui.QTextBlockFormat;
with QtAda6.QtGui.QTextListFormat;
with QtAda6.QtGui.QTextList;
with QtAda6.QtGui.QTextListFormat.Style;
with QtAda6.QtGui.QTextTable;
with QtAda6.QtGui.QTextDocumentFragment;
with QtAda6.QtGui.QTextFrameFormat;
with QtAda6.QtGui.QTextImageFormat;
with QtAda6.QtGui.QTextFrameFormat.Position;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QTextDocument.MarkdownFeature;
with QtAda6.QtGui.QTextTableFormat;
with QtAda6.QtGui.QTextCursor.MoveOperation;
with QtAda6.QtGui.QTextCursor.MoveMode;
with QtAda6.QtGui.QTextCursor.SelectionType;
package body QtAda6.QtGui.QTextCursor is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (block_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, block_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, cursor_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, document_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (frame_P : access QtAda6.QtGui.QTextFrame.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, frame_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function anchor (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "anchor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end anchor;
   function atBlockEnd (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atBlockEnd");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end atBlockEnd;
   function atBlockStart (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atBlockStart");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end atBlockStart;
   function atEnd (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atEnd");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end atEnd;
   function atStart (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atStart");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end atStart;
   procedure beginEditBlock (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginEditBlock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end beginEditBlock;
   function block (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "block");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end block;
   function blockCharFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "blockCharFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockCharFormat;
   function blockFormat (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlockFormat.Class := new QtAda6.QtGui.QTextBlockFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "blockFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockFormat;
   function blockNumber (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end blockNumber;
   function charFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "charFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end charFormat;
   procedure clearSelection (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearSelection;
   function columnNumber (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end columnNumber;
   function createList
     (self : access Inst; format_P : access QtAda6.QtGui.QTextListFormat.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createList;
   function createList
     (self : access Inst; style_P : access QtAda6.QtGui.QTextListFormat.Style.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, style_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createList;
   function currentFrame (self : access Inst) return access QtAda6.QtGui.QTextFrame.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFrame.Class := new QtAda6.QtGui.QTextFrame.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentFrame");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentFrame;
   function currentList (self : access Inst) return access QtAda6.QtGui.QTextList.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentList");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentList;
   function currentTable (self : access Inst) return access QtAda6.QtGui.QTextTable.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextTable.Class := new QtAda6.QtGui.QTextTable.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentTable");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentTable;
   procedure deleteChar (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deleteChar");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end deleteChar;
   procedure deletePreviousChar (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deletePreviousChar");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end deletePreviousChar;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextDocument.Class := new QtAda6.QtGui.QTextDocument.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "document");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end document;
   procedure endEditBlock (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endEditBlock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endEditBlock;
   function hasComplexSelection (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasComplexSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasComplexSelection;
   function hasSelection (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasSelection;
   procedure insertBlock (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertBlock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end insertBlock;
   procedure insertBlock (self : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertBlock");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end insertBlock;
   procedure insertBlock
     (self         : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class;
      charFormat_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertBlock");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Tuple_SetItem (Args, 1, charFormat_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end insertBlock;
   procedure insertFragment (self : access Inst; fragment_P : access QtAda6.QtGui.QTextDocumentFragment.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertFragment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, fragment_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end insertFragment;
   function insertFrame
     (self : access Inst; format_P : access QtAda6.QtGui.QTextFrameFormat.Inst'Class)
      return access QtAda6.QtGui.QTextFrame.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFrame.Class := new QtAda6.QtGui.QTextFrame.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertFrame");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertFrame;
   procedure insertHtml (self : access Inst; html_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertHtml");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (html_P));
      Result := Object_CallObject (Method, Args, True);
   end insertHtml;
   procedure insertImage (self : access Inst; format_P : access QtAda6.QtGui.QTextImageFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end insertImage;
   procedure insertImage
     (self        : access Inst; format_P : access QtAda6.QtGui.QTextImageFormat.Inst'Class;
      alignment_P : access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Tuple_SetItem (Args, 1, alignment_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end insertImage;
   procedure insertImage (self : access Inst; image_P : Union_QtAda6_QtGui_QImage_str; name_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end insertImage;
   procedure insertImage (self : access Inst; name_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end insertImage;
   function insertList
     (self : access Inst; format_P : access QtAda6.QtGui.QTextListFormat.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertList;
   function insertList
     (self : access Inst; style_P : access QtAda6.QtGui.QTextListFormat.Style.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, style_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertList;
   procedure insertMarkdown
     (self : access Inst; markdown_P : str; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertMarkdown");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (markdown_P));
      Tuple_SetItem (Args, 1, features_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end insertMarkdown;
   function insertTable
     (self : access Inst; rows_P : int; cols_P : int) return access QtAda6.QtGui.QTextTable.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextTable.Class := new QtAda6.QtGui.QTextTable.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertTable");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (rows_P));
      Tuple_SetItem (Args, 1, Long_FromLong (cols_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertTable;
   function insertTable
     (self : access Inst; rows_P : int; cols_P : int; format_P : access QtAda6.QtGui.QTextTableFormat.Inst'Class)
      return access QtAda6.QtGui.QTextTable.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextTable.Class := new QtAda6.QtGui.QTextTable.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertTable");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (rows_P));
      Tuple_SetItem (Args, 1, Long_FromLong (cols_P));
      Tuple_SetItem (Args, 2, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertTable;
   procedure insertText (self : access Inst; text_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end insertText;
   procedure insertText (self : access Inst; text_P : str; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end insertText;
   function isCopyOf (self : access Inst; other_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCopyOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCopyOf;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   procedure joinPreviousEditBlock (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "joinPreviousEditBlock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end joinPreviousEditBlock;
   function keepPositionOnInsert (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keepPositionOnInsert");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end keepPositionOnInsert;
   procedure mergeBlockCharFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mergeBlockCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, modifier_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end mergeBlockCharFormat;
   procedure mergeBlockFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mergeBlockFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, modifier_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end mergeBlockFormat;
   procedure mergeCharFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mergeCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, modifier_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end mergeCharFormat;
   function movePosition
     (self    : access Inst; op_P : access QtAda6.QtGui.QTextCursor.MoveOperation.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QTextCursor.MoveMode.Inst'Class; n_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "movePosition");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, op_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end movePosition;
   function position (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "position");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end position;
   function positionInBlock (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "positionInBlock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end positionInBlock;
   procedure removeSelectedText (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeSelectedText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end removeSelectedText;
   procedure select_K (self : access Inst; selection_P : access QtAda6.QtGui.QTextCursor.SelectionType.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "select");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, selection_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end select_K;
   function selectedTableCells (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedTableCells");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end selectedTableCells;
   function selectedText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end selectedText;
   function selection_F (self : access Inst) return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocumentFragment.Class := new QtAda6.QtGui.QTextDocumentFragment.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selection_F;
   function selectionEnd (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionEnd");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end selectionEnd;
   function selectionStart (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionStart");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end selectionStart;
   procedure setBlockCharFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBlockCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setBlockCharFormat;
   procedure setBlockFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBlockFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setBlockFormat;
   procedure setCharFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setCharFormat;
   procedure setKeepPositionOnInsert (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeepPositionOnInsert");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setKeepPositionOnInsert;
   procedure setPosition (self : access Inst; pos_P : int; mode_P : access QtAda6.QtGui.QTextCursor.MoveMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPosition;
   procedure setVerticalMovementX (self : access Inst; x_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalMovementX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Result := Object_CallObject (Method, Args, True);
   end setVerticalMovementX;
   procedure setVisualNavigation (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisualNavigation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setVisualNavigation;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QTextCursor.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function verticalMovementX (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalMovementX");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end verticalMovementX;
   function visualNavigation (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualNavigation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end visualNavigation;
end QtAda6.QtGui.QTextCursor;
