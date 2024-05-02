-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextdocument.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QUrl;
limited with QtAda6.QtGui.QTextFormat;
limited with QtAda6.QtGui.QTextBlock;
limited with QtAda6.QtGui.QTextDocument.Stacks;
limited with QtAda6.QtGui.QTextObject;
limited with QtAda6.QtCore.Qt.CursorMoveStyle;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QTextOption;
limited with QtAda6.QtGui.QAbstractTextDocumentLayout;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QRegularExpression;
limited with QtAda6.QtGui.QTextCursor;
limited with QtAda6.QtGui.QTextDocument.FindFlag;
limited with QtAda6.QtGui.QTextFrame;
limited with QtAda6.QtGui.QTextDocument.MetaInformation;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtGui.QPagedPaintDevice;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtGui.QTextDocument.MarkdownFeature;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QTextDocument is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype LIST_QtAda6_QtGui_QTextFormat is QtAda6.QtGui.QTextFormat.Class_Array;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function baseUrlChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- baseUrlChanged(QUrl)
   function blockCountChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- blockCountChanged(int)
   function contentsChange
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- contentsChange(int,int,int)
   function contentsChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- contentsChanged()
   function cursorPositionChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cursorPositionChanged(QTextCursor)
   function documentLayoutChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- documentLayoutChanged()
   function modificationChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- modificationChanged(bool)
   function redoAvailable (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- redoAvailable(bool)
   function undoAvailable (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- undoAvailable(bool)
   function undoCommandAdded (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- undoCommandAdded()
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (text_P : str; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure addResource
     (self : access Inst; type_K_P : int; name_P : access QtAda6.QtCore.QUrl.Inst'Class; resource_P : Any);
   procedure addResource (self : access Inst; type_K_P : int; name_P : str; resource_P : Any);
   procedure adjustSize (self : access Inst);
   function allFormats (self : access Inst) return LIST_QtAda6_QtGui_QTextFormat;
   function availableRedoSteps (self : access Inst) return int;
   function availableUndoSteps (self : access Inst) return int;
   function baseUrl (self : access Inst) return access QtAda6.QtCore.QUrl.Inst'Class;
   function baselineOffset (self : access Inst) return float;
   function begin_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function blockCount (self : access Inst) return int;
   function characterAt (self : access Inst; pos_P : int) return str;
   function characterCount (self : access Inst) return int;
   procedure clear (self : access Inst);
   procedure clearUndoRedoStacks
     (self : access Inst; historyToClear_P : access QtAda6.QtGui.QTextDocument.Stacks.Inst'Class := null);
   function clone
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null)
      return access QtAda6.QtGui.QTextDocument.Inst'Class;
   function createObject
     (self : access Inst; f_P : access QtAda6.QtGui.QTextFormat.Inst'Class)
      return access QtAda6.QtGui.QTextObject.Inst'Class;
   function defaultCursorMoveStyle (self : access Inst) return access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class;
   function defaultFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function defaultStyleSheet (self : access Inst) return str;
   function defaultTextOption (self : access Inst) return access QtAda6.QtGui.QTextOption.Inst'Class;
   function documentLayout (self : access Inst) return access QtAda6.QtGui.QAbstractTextDocumentLayout.Inst'Class;
   function documentMargin (self : access Inst) return float;
   procedure drawContents
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRectF.Inst'Class := null);
   procedure drawContents
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class := null);
   function end_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function find
     (self      : access Inst; expr_P : access QtAda6.QtCore.QRegularExpression.Inst'Class;
      cursor_P  : access QtAda6.QtGui.QTextCursor.Inst'Class;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class := null)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function find
     (self      : access Inst; expr_P : str; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class := null)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function find
     (self      : access Inst; expr_P : access QtAda6.QtCore.QRegularExpression.Inst'Class; from_U_P : int := 0;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class := null)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function find
     (self      : access Inst; expr_P : str; from_U_P : int := 0;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class := null)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
-- function find(self : access Inst;subString_P : str;cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class;options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class := null) return access QtAda6.QtGui.QTextCursor.Inst'Class;
-- function find(self : access Inst;subString_P : str;from_U_P : int := 0;options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class := null) return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function findBlock (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function findBlockByLineNumber
     (self : access Inst; blockNumber_P : int) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function findBlockByNumber
     (self : access Inst; blockNumber_P : int) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function firstBlock (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function frameAt (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextFrame.Inst'Class;
   function idealWidth (self : access Inst) return float;
   function indentWidth (self : access Inst) return float;
   function isEmpty (self : access Inst) return bool;
   function isLayoutEnabled (self : access Inst) return bool;
   function isModified (self : access Inst) return bool;
   function isRedoAvailable (self : access Inst) return bool;
   function isUndoAvailable (self : access Inst) return bool;
   function isUndoRedoEnabled (self : access Inst) return bool;
   function lastBlock (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function lineCount (self : access Inst) return int;
   function loadResource (self : access Inst; type_K_P : int; name_P : access QtAda6.QtCore.QUrl.Inst'Class) return Any;
   function loadResource (self : access Inst; type_K_P : int; name_P : str) return Any;
   procedure markContentsDirty (self : access Inst; from_U_P : int; length_P : int);
   function maximumBlockCount (self : access Inst) return int;
   function metaInformation_F
     (self : access Inst; info_P : access QtAda6.QtGui.QTextDocument.MetaInformation.Inst'Class) return str;
   function object (self : access Inst; objectIndex_P : int) return access QtAda6.QtGui.QTextObject.Inst'Class;
   function objectForFormat
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QTextFormat.Inst'Class)
      return access QtAda6.QtGui.QTextObject.Inst'Class;
   function pageCount (self : access Inst) return int;
   function pageSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   procedure print_U (self : access Inst; printer_P : access QtAda6.QtGui.QPagedPaintDevice.Inst'Class);
   procedure redo (self : access Inst);
   procedure redo (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class);
   function resource (self : access Inst; type_K_P : int; name_P : access QtAda6.QtCore.QUrl.Inst'Class) return Any;
   function resource (self : access Inst; type_K_P : int; name_P : str) return Any;
   function revision (self : access Inst) return int;
   function rootFrame (self : access Inst) return access QtAda6.QtGui.QTextFrame.Inst'Class;
   procedure setBaseUrl (self : access Inst; url_P : access QtAda6.QtCore.QUrl.Inst'Class);
   procedure setBaseUrl (self : access Inst; url_P : str);
   procedure setBaselineOffset (self : access Inst; baseline_P : float);
   procedure setDefaultCursorMoveStyle
     (self : access Inst; style_P : access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class);
   procedure setDefaultFont (self : access Inst; font_P : access QtAda6.QtGui.QFont.Inst'Class);
   procedure setDefaultFont (self : access Inst; font_P : str);
   procedure setDefaultFont (self : access Inst; font_P : SEQUENCE_str);
   procedure setDefaultStyleSheet (self : access Inst; sheet_P : str);
   procedure setDefaultTextOption (self : access Inst; option_P : access QtAda6.QtGui.QTextOption.Inst'Class);
   procedure setDefaultTextOption (self : access Inst; option_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setDocumentLayout
     (self : access Inst; layout_P : access QtAda6.QtGui.QAbstractTextDocumentLayout.Inst'Class);
   procedure setDocumentMargin (self : access Inst; margin_P : float);
   procedure setHtml (self : access Inst; html_P : str);
   procedure setIndentWidth (self : access Inst; width_P : float);
   procedure setLayoutEnabled (self : access Inst; b_P : bool);
   procedure setMarkdown
     (self       : access Inst; markdown_P : str;
      features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class := null);
   procedure setMaximumBlockCount (self : access Inst; maximum_P : int);
   procedure setMetaInformation
     (self : access Inst; info_P : access QtAda6.QtGui.QTextDocument.MetaInformation.Inst'Class; arg_2_P : str);
   procedure setModified (self : access Inst; m_P : bool := False);
   procedure setPageSize (self : access Inst; size_P : access QtAda6.QtCore.QSizeF.Inst'Class);
   procedure setPageSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setPlainText (self : access Inst; text_P : str);
   procedure setSubScriptBaseline (self : access Inst; baseline_P : float);
   procedure setSuperScriptBaseline (self : access Inst; baseline_P : float);
   procedure setTextWidth (self : access Inst; width_P : float);
   procedure setUndoRedoEnabled (self : access Inst; enable_P : bool);
   procedure setUseDesignMetrics (self : access Inst; b_P : bool);
   function size (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function subScriptBaseline (self : access Inst) return float;
   function superScriptBaseline (self : access Inst) return float;
   function textWidth (self : access Inst) return float;
   function toHtml (self : access Inst) return str;
   function toMarkdown
     (self : access Inst; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class := null) return str;
   function toPlainText (self : access Inst) return str;
   function toRawText (self : access Inst) return str;
   procedure undo (self : access Inst);
   procedure undo (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class);
   function useDesignMetrics (self : access Inst) return bool;
end QtAda6.QtGui.QTextDocument;
