-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextcursor.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextBlock;
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextFrame;
limited with QtAda6.QtGui.QTextCharFormat;
limited with QtAda6.QtGui.QTextBlockFormat;
limited with QtAda6.QtGui.QTextListFormat;
limited with QtAda6.QtGui.QTextList;
limited with QtAda6.QtGui.QTextListFormat.Style;
limited with QtAda6.QtGui.QTextTable;
limited with QtAda6.QtGui.QTextDocumentFragment;
limited with QtAda6.QtGui.QTextFrameFormat;
limited with QtAda6.QtGui.QTextImageFormat;
limited with QtAda6.QtGui.QTextFrameFormat.Position;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QTextDocument.MarkdownFeature;
limited with QtAda6.QtGui.QTextTableFormat;
limited with QtAda6.QtGui.QTextCursor.MoveOperation;
limited with QtAda6.QtGui.QTextCursor.MoveMode;
limited with QtAda6.QtGui.QTextCursor.SelectionType;
package QtAda6.QtGui.QTextCursor is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QImagestr is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (block_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return Class;
   function Create (cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return Class;
   function Create (document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   function Create (frame_P : access QtAda6.QtGui.QTextFrame.Inst'Class) return Class;
   procedure U_copy_U;
   function anchor (self : access Inst) return int;
   function atBlockEnd (self : access Inst) return bool;
   function atBlockStart (self : access Inst) return bool;
   function atEnd (self : access Inst) return bool;
   function atStart (self : access Inst) return bool;
   procedure beginEditBlock (self : access Inst);
   function block (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function blockCharFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function blockFormat (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.Inst'Class;
   function blockNumber (self : access Inst) return int;
   function charFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   procedure clearSelection (self : access Inst);
   function columnNumber (self : access Inst) return int;
   function createList
     (self : access Inst; format_P : access QtAda6.QtGui.QTextListFormat.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class;
   function createList
     (self : access Inst; style_P : access QtAda6.QtGui.QTextListFormat.Style.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class;
   function currentFrame (self : access Inst) return access QtAda6.QtGui.QTextFrame.Inst'Class;
   function currentList (self : access Inst) return access QtAda6.QtGui.QTextList.Inst'Class;
   function currentTable (self : access Inst) return access QtAda6.QtGui.QTextTable.Inst'Class;
   procedure deleteChar (self : access Inst);
   procedure deletePreviousChar (self : access Inst);
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class;
   procedure endEditBlock (self : access Inst);
   function hasComplexSelection (self : access Inst) return bool;
   function hasSelection (self : access Inst) return bool;
   procedure insertBlock (self : access Inst);
   procedure insertBlock (self : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class);
   procedure insertBlock
     (self         : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class;
      charFormat_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure insertFragment (self : access Inst; fragment_P : access QtAda6.QtGui.QTextDocumentFragment.Inst'Class);
   function insertFrame
     (self : access Inst; format_P : access QtAda6.QtGui.QTextFrameFormat.Inst'Class)
      return access QtAda6.QtGui.QTextFrame.Inst'Class;
   procedure insertHtml (self : access Inst; html_P : str);
   procedure insertImage (self : access Inst; format_P : access QtAda6.QtGui.QTextImageFormat.Inst'Class);
   procedure insertImage
     (self        : access Inst; format_P : access QtAda6.QtGui.QTextImageFormat.Inst'Class;
      alignment_P : access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class);
   procedure insertImage (self : access Inst; image_P : UNION_QtAda6_QtGui_QImagestr; name_P : str := "");
   procedure insertImage (self : access Inst; name_P : str);
   function insertList
     (self : access Inst; format_P : access QtAda6.QtGui.QTextListFormat.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class;
   function insertList
     (self : access Inst; style_P : access QtAda6.QtGui.QTextListFormat.Style.Inst'Class)
      return access QtAda6.QtGui.QTextList.Inst'Class;
   procedure insertMarkdown
     (self       : access Inst; markdown_P : str;
      features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class := null);
   function insertTable
     (self : access Inst; rows_P : int; cols_P : int) return access QtAda6.QtGui.QTextTable.Inst'Class;
   function insertTable
     (self : access Inst; rows_P : int; cols_P : int; format_P : access QtAda6.QtGui.QTextTableFormat.Inst'Class)
      return access QtAda6.QtGui.QTextTable.Inst'Class;
   procedure insertText (self : access Inst; text_P : str);
   procedure insertText (self : access Inst; text_P : str; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   function isCopyOf (self : access Inst; other_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return bool;
   function isNull (self : access Inst) return bool;
   procedure joinPreviousEditBlock (self : access Inst);
   function keepPositionOnInsert (self : access Inst) return bool;
   procedure mergeBlockCharFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure mergeBlockFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class);
   procedure mergeCharFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   function movePosition
     (self    : access Inst; op_P : access QtAda6.QtGui.QTextCursor.MoveOperation.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QTextCursor.MoveMode.Inst'Class := null; n_P : int := 0) return bool;
   function position (self : access Inst) return int;
   function positionInBlock (self : access Inst) return int;
   procedure removeSelectedText (self : access Inst);
   procedure select_K (self : access Inst; selection_P : access QtAda6.QtGui.QTextCursor.SelectionType.Inst'Class);
   function selectedTableCells (self : access Inst) return access Object'Class;
   function selectedText (self : access Inst) return str;
   function selection_F (self : access Inst) return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class;
   function selectionEnd (self : access Inst) return int;
   function selectionStart (self : access Inst) return int;
   procedure setBlockCharFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure setBlockFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class);
   procedure setCharFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure setKeepPositionOnInsert (self : access Inst; b_P : bool);
   procedure setPosition
     (self : access Inst; pos_P : int; mode_P : access QtAda6.QtGui.QTextCursor.MoveMode.Inst'Class := null);
   procedure setVerticalMovementX (self : access Inst; x_P : int);
   procedure setVisualNavigation (self : access Inst; b_P : bool);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QTextCursor.Inst'Class);
   function verticalMovementX (self : access Inst) return int;
   function visualNavigation (self : access Inst) return bool;
end QtAda6.QtGui.QTextCursor;
