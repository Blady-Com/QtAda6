-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextdocument.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
package QtAda6.QtGui.QTextDocument is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QUrl_str is access Any;
   type List_QtAda6_QtGui_QTextFormat is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtCore_QRegularExpression_str is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag is access Any;
   type Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   baseUrlChanged        : ClassVar_Signal;-- baseUrlChanged(QUrl)
   blockCountChanged     : ClassVar_Signal;-- blockCountChanged(int)
   contentsChange        : ClassVar_Signal;-- contentsChange(int,int,int)
   contentsChanged       : ClassVar_Signal;-- contentsChanged()
   cursorPositionChanged : ClassVar_Signal;-- cursorPositionChanged(QTextCursor)
   documentLayoutChanged : ClassVar_Signal;-- documentLayoutChanged()
   modificationChanged   : ClassVar_Signal;-- modificationChanged(bool)
   redoAvailable         : ClassVar_Signal;-- redoAvailable(bool)
   undoAvailable         : ClassVar_Signal;-- undoAvailable(bool)
   undoCommandAdded      : ClassVar_Signal;-- undoCommandAdded()
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (text_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   procedure addResource (self : access Inst; type_K_P : int; name_P : Union_QtAda6_QtCore_QUrl_str; resource_P : Any);
   procedure adjustSize (self : access Inst);
   function allFormats (self : access Inst) return List_QtAda6_QtGui_QTextFormat;
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
     (self : access Inst; historyToClear_P : access QtAda6.QtGui.QTextDocument.Stacks.Inst'Class);
   function clone
     (self : access Inst; parent_P : Optional_QtAda6_QtCore_QObject)
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
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   function end_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function find_F
     (self      : access Inst; expr_P : Union_QtAda6_QtCore_QRegularExpression_str;
      cursor_P  : access QtAda6.QtGui.QTextCursor.Inst'Class;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function find_F
     (self      : access Inst; expr_P : Union_QtAda6_QtCore_QRegularExpression_str; from_U_P : int;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function find_F
     (self      : access Inst; subString_P : str; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function find_F
     (self      : access Inst; subString_P : str; from_U_P : int;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
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
   function loadResource (self : access Inst; type_K_P : int; name_P : Union_QtAda6_QtCore_QUrl_str) return Any;
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
   function resource_F (self : access Inst; type_K_P : int; name_P : Union_QtAda6_QtCore_QUrl_str) return Any;
   function revision (self : access Inst) return int;
   function rootFrame (self : access Inst) return access QtAda6.QtGui.QTextFrame.Inst'Class;
   procedure setBaseUrl (self : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str);
   procedure setBaselineOffset (self : access Inst; baseline_P : float);
   procedure setDefaultCursorMoveStyle
     (self : access Inst; style_P : access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class);
   procedure setDefaultFont (self : access Inst; font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
   procedure setDefaultStyleSheet (self : access Inst; sheet_P : str);
   procedure setDefaultTextOption
     (self : access Inst; option_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag);
   procedure setDocumentLayout
     (self : access Inst; layout_P : access QtAda6.QtGui.QAbstractTextDocumentLayout.Inst'Class);
   procedure setDocumentMargin (self : access Inst; margin_P : float);
   procedure setHtml (self : access Inst; html_P : str);
   procedure setIndentWidth (self : access Inst; width_P : float);
   procedure setLayoutEnabled (self : access Inst; b_P : bool);
   procedure setMarkdown
     (self : access Inst; markdown_P : str; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class);
   procedure setMaximumBlockCount (self : access Inst; maximum_P : int);
   procedure setMetaInformation
     (self : access Inst; info_P : access QtAda6.QtGui.QTextDocument.MetaInformation.Inst'Class; arg_2_P : str);
   procedure setModified (self : access Inst; m_P : bool);
   procedure setPageSize (self : access Inst; size_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize);
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
     (self : access Inst; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class) return str;
   function toPlainText (self : access Inst) return str;
   function toRawText (self : access Inst) return str;
   procedure undo (self : access Inst);
   procedure undo (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class);
   function useDesignMetrics (self : access Inst) return bool;
end QtAda6.QtGui.QTextDocument;
