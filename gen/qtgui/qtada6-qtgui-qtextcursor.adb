-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextcursor.adb
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
with QtAda6.QtGui.QTextBlock;
with QtAda6.QtGui.QTextCursor;
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
with QtAda6.QtGui.QTextDocument.MarkdownFeature;
with QtAda6.QtGui.QTextTableFormat;
with QtAda6.QtGui.QTextCursor.MoveOperation;
with QtAda6.QtGui.QTextCursor.MoveMode;
with QtAda6.QtGui.QTextCursor.SelectionType;
package body QtAda6.QtGui.QTextCursor is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (block_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if block_P /= null then block_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cursor_P /= null then cursor_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if document_P /= null then document_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (frame_P : access QtAda6.QtGui.QTextFrame.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if frame_P /= null then frame_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function anchor (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "anchor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end anchor;
   function atBlockEnd (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atBlockEnd");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end atBlockEnd;
   function atBlockStart (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atBlockStart");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end atBlockStart;
   function atEnd (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atEnd");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end atEnd;
   function atStart (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atStart");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end atStart;
   procedure beginEditBlock (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginEditBlock");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginEditBlock;
   function block (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "block");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end block;
   function blockCharFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "blockCharFormat");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockCharFormat;
   function blockFormat (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextBlockFormat.Class := new QtAda6.QtGui.QTextBlockFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "blockFormat");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockFormat;
   function blockNumber (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockNumber");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end blockNumber;
   function charFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "charFormat");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end charFormat;
   procedure clearSelection (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearSelection");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearSelection;
   function columnNumber (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnNumber");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnNumber;
   function createList
     (self : access Inst; format_P : access QtAda6.QtGui.QTextListFormat.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createList;
   function createList
     (self : access Inst; style_P : access QtAda6.QtGui.QTextListFormat.Style.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createList;
   function currentFrame (self : access Inst) return access QtAda6.QtGui.QTextFrame.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFrame.Class := new QtAda6.QtGui.QTextFrame.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentFrame");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentFrame;
   function currentList (self : access Inst) return access QtAda6.QtGui.QTextList.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentList");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentList;
   function currentTable (self : access Inst) return access QtAda6.QtGui.QTextTable.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextTable.Class := new QtAda6.QtGui.QTextTable.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentTable");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentTable;
   procedure deleteChar (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deleteChar");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end deleteChar;
   procedure deletePreviousChar (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deletePreviousChar");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end deletePreviousChar;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocument.Class := new QtAda6.QtGui.QTextDocument.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "document");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end document;
   procedure endEditBlock (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endEditBlock");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endEditBlock;
   function hasComplexSelection (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasComplexSelection");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasComplexSelection;
   function hasSelection (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasSelection");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasSelection;
   procedure insertBlock (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertBlock");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertBlock;
   procedure insertBlock (self : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertBlock");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertBlock;
   procedure insertBlock
     (self         : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class;
      charFormat_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertBlock");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if charFormat_P /= null then charFormat_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertBlock;
   procedure insertFragment (self : access Inst; fragment_P : access QtAda6.QtGui.QTextDocumentFragment.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertFragment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fragment_P /= null then fragment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertFragment;
   function insertFrame
     (self : access Inst; format_P : access QtAda6.QtGui.QTextFrameFormat.Inst'Class)
      return access QtAda6.QtGui.QTextFrame.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFrame.Class := new QtAda6.QtGui.QTextFrame.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertFrame");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertFrame;
   procedure insertHtml (self : access Inst; html_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertHtml");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (html_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertHtml;
   procedure insertImage (self : access Inst; format_P : access QtAda6.QtGui.QTextImageFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertImage;
   procedure insertImage
     (self        : access Inst; format_P : access QtAda6.QtGui.QTextImageFormat.Inst'Class;
      alignment_P : access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertImage;
   procedure insertImage (self : access Inst; image_P : UNION_QtAda6_QtGui_QImage_str; name_P : str := "") is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if name_P /= "" then
         Dict_SetItemString (Dict, "name", Unicode_FromString (name_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end insertImage;
   procedure insertImage (self : access Inst; name_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertImage;
   function insertList
     (self : access Inst; format_P : access QtAda6.QtGui.QTextListFormat.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertList;
   function insertList
     (self : access Inst; style_P : access QtAda6.QtGui.QTextListFormat.Style.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextList.Class := new QtAda6.QtGui.QTextList.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertList;
   procedure insertMarkdown
     (self       : access Inst; markdown_P : str;
      features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertMarkdown");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (markdown_P));
      Dict := Dict_New;
      if features_P /= null then
         Dict_SetItemString (Dict, "features", features_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end insertMarkdown;
   function insertTable
     (self : access Inst; rows_P : int; cols_P : int) return access QtAda6.QtGui.QTextTable.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextTable.Class := new QtAda6.QtGui.QTextTable.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertTable");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (rows_P));
      Tuple_SetItem (Args, 1, Long_FromLong (cols_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertTable;
   function insertTable
     (self : access Inst; rows_P : int; cols_P : int; format_P : access QtAda6.QtGui.QTextTableFormat.Inst'Class)
      return access QtAda6.QtGui.QTextTable.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextTable.Class := new QtAda6.QtGui.QTextTable.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertTable");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (rows_P));
      Tuple_SetItem (Args, 1, Long_FromLong (cols_P));
      Tuple_SetItem (Args, 2, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertTable;
   procedure insertText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertText;
   procedure insertText (self : access Inst; text_P : str; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertText;
   function isCopyOf (self : access Inst; other_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCopyOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isCopyOf;
   function isNull (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isNull;
   procedure joinPreviousEditBlock (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "joinPreviousEditBlock");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end joinPreviousEditBlock;
   function keepPositionOnInsert (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keepPositionOnInsert");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end keepPositionOnInsert;
   procedure mergeBlockCharFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mergeBlockCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if modifier_P /= null then modifier_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mergeBlockCharFormat;
   procedure mergeBlockFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mergeBlockFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if modifier_P /= null then modifier_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mergeBlockFormat;
   procedure mergeCharFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mergeCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if modifier_P /= null then modifier_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mergeCharFormat;
   function movePosition
     (self    : access Inst; op_P : access QtAda6.QtGui.QTextCursor.MoveOperation.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QTextCursor.MoveMode.Inst'Class := null; n_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "movePosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if op_P /= null then op_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if arg_2_P /= null then
         Dict_SetItemString (Dict, "arg__2", arg_2_P.Python_Proxy);
      end if;
      if n_P /= 0 then
         Dict_SetItemString (Dict, "n", Long_FromLong (n_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end movePosition;
   function position (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "position");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end position;
   function positionInBlock (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "positionInBlock");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end positionInBlock;
   procedure removeSelectedText (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeSelectedText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeSelectedText;
   procedure select_K (self : access Inst; selection_P : access QtAda6.QtGui.QTextCursor.SelectionType.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "select");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if selection_P /= null then selection_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end select_K;
   function selectedTableCells (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedTableCells");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end selectedTableCells;
   function selectedText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end selectedText;
   function selection (self : access Inst) return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocumentFragment.Class := new QtAda6.QtGui.QTextDocumentFragment.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selection");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selection;
   function selectionEnd (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionEnd");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end selectionEnd;
   function selectionStart (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionStart");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end selectionStart;
   procedure setBlockCharFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBlockCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBlockCharFormat;
   procedure setBlockFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBlockFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBlockFormat;
   procedure setCharFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCharFormat;
   procedure setKeepPositionOnInsert (self : access Inst; b_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeepPositionOnInsert");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setKeepPositionOnInsert;
   procedure setPosition
     (self : access Inst; pos_P : int; mode_P : access QtAda6.QtGui.QTextCursor.MoveMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setPosition;
   procedure setVerticalMovementX (self : access Inst; x_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalMovementX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVerticalMovementX;
   procedure setVisualNavigation (self : access Inst; b_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisualNavigation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVisualNavigation;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QTextCursor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function verticalMovementX (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalMovementX");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end verticalMovementX;
   function visualNavigation (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualNavigation");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end visualNavigation;
end QtAda6.QtGui.QTextCursor;
