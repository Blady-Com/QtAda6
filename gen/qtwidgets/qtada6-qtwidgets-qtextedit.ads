-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtextedit.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QTextEdit.AutoFormattingFlag;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtGui.QTextCharFormat;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QTextCursor;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QDragEnterEvent;
limited with QtAda6.QtGui.QDragLeaveEvent;
limited with QtAda6.QtGui.QDragMoveEvent;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtWidgets.QTextEdit.ExtraSelection;
limited with QtAda6.QtGui.QTextDocument.FindFlag;
limited with QtAda6.QtCore.QRegularExpression;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QTextEdit.LineWrapMode;
limited with QtAda6.QtCore.QUrl;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QTextCursor.MoveOperation;
limited with QtAda6.QtGui.QTextCursor.MoveMode;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QPagedPaintDevice;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtCore.Qt.TextInteractionFlag;
limited with QtAda6.QtGui.QTextOption.WrapMode;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.QTimerEvent;
limited with QtAda6.QtGui.QTextDocument.MarkdownFeature;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QAbstractScrollArea;
package QtAda6.QtWidgets.QTextEdit is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type List_QtAda6_QtWidgets_QTextEdit_ExtraSelection is access Any;
   type Union_QtAda6_QtCore_QRegularExpression_str is access Any;
   type Union_QtAda6_QtCore_QUrl_str is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Sequence_QtAda6_QtWidgets_QTextEdit_ExtraSelection is access Any;
   type Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractScrollArea.Inst with null record;
   procedure Finalize (Self : in out Class);
   copyAvailable            : ClassVar_Signal;-- copyAvailable(bool)
   currentCharFormatChanged : ClassVar_Signal;-- currentCharFormatChanged(QTextCharFormat)
   cursorPositionChanged    : ClassVar_Signal;-- cursorPositionChanged()
   redoAvailable            : ClassVar_Signal;-- redoAvailable(bool)
   selectionChanged         : ClassVar_Signal;-- selectionChanged()
   textChanged              : ClassVar_Signal;-- textChanged()
   undoAvailable            : ClassVar_Signal;-- undoAvailable(bool)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (text_P : str; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function acceptRichText (self : access Inst) return bool;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function anchorAt (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return str;
   procedure append (self : access Inst; text_P : str);
   function autoFormatting_F
     (self : access Inst) return access QtAda6.QtWidgets.QTextEdit.AutoFormattingFlag.Inst'Class;
   function canInsertFromMimeData
     (self : access Inst; source_P : access QtAda6.QtCore.QMimeData.Inst'Class) return bool;
   function canPaste (self : access Inst) return bool;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   procedure contextMenuEvent (self : access Inst; e_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   procedure copy (self : access Inst);
   function createMimeDataFromSelection (self : access Inst) return access QtAda6.QtCore.QMimeData.Inst'Class;
   function createStandardContextMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function createStandardContextMenu
     (self : access Inst; position_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function currentCharFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function currentFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function cursorForPosition
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function cursorRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function cursorRect
     (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function cursorWidth (self : access Inst) return int;
   procedure cut (self : access Inst);
   procedure doSetTextCursor (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class);
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class;
   function documentTitle (self : access Inst) return str;
   procedure dragEnterEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class);
   procedure dragLeaveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class);
   procedure dragMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure dropEvent (self : access Inst; e_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   procedure ensureCursorVisible (self : access Inst);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function extraSelections (self : access Inst) return List_QtAda6_QtWidgets_QTextEdit_ExtraSelection;
   function find
     (self : access Inst; exp_P : str; options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class) return bool;
   function find
     (self      : access Inst; exp_P : Union_QtAda6_QtCore_QRegularExpression_str;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure focusOutEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function fontFamily (self : access Inst) return str;
   function fontItalic (self : access Inst) return bool;
   function fontPointSize (self : access Inst) return float;
   function fontUnderline (self : access Inst) return bool;
   function fontWeight (self : access Inst) return int;
   procedure inputMethodEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodQuery
     (self : access Inst; property_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class; argument_P : Any) return Any;
   procedure insertFromMimeData (self : access Inst; source_P : access QtAda6.QtCore.QMimeData.Inst'Class);
   procedure insertHtml (self : access Inst; text_P : str);
   procedure insertPlainText (self : access Inst; text_P : str);
   function isReadOnly (self : access Inst) return bool;
   function isUndoRedoEnabled (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function lineWrapColumnOrWidth (self : access Inst) return int;
   function lineWrapMode_F (self : access Inst) return access QtAda6.QtWidgets.QTextEdit.LineWrapMode.Inst'Class;
   function loadResource (self : access Inst; type_K_P : int; name_P : Union_QtAda6_QtCore_QUrl_str) return Any;
   procedure mergeCurrentCharFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure mouseDoubleClickEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure moveCursor
     (self   : access Inst; operation_P : access QtAda6.QtGui.QTextCursor.MoveOperation.Inst'Class;
      mode_P : access QtAda6.QtGui.QTextCursor.MoveMode.Inst'Class);
   function overwriteMode (self : access Inst) return bool;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure paste (self : access Inst);
   function placeholderText (self : access Inst) return str;
   procedure print_U (self : access Inst; printer_P : access QtAda6.QtGui.QPagedPaintDevice.Inst'Class);
   procedure redo (self : access Inst);
   procedure resizeEvent (self : access Inst; e_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure scrollToAnchor (self : access Inst; name_P : str);
   procedure selectAll (self : access Inst);
   procedure setAcceptRichText (self : access Inst; accept_K_P : bool);
   procedure setAlignment (self : access Inst; a_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setAutoFormatting
     (self : access Inst; features_P : access QtAda6.QtWidgets.QTextEdit.AutoFormattingFlag.Inst'Class);
   procedure setCurrentCharFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure setCurrentFont (self : access Inst; f_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
   procedure setCursorWidth (self : access Inst; width_P : int);
   procedure setDocument (self : access Inst; document_P : access QtAda6.QtGui.QTextDocument.Inst'Class);
   procedure setDocumentTitle (self : access Inst; title_P : str);
   procedure setExtraSelections (self : access Inst; selections_P : Sequence_QtAda6_QtWidgets_QTextEdit_ExtraSelection);
   procedure setFontFamily (self : access Inst; fontFamily_P : str);
   procedure setFontItalic (self : access Inst; b_P : bool);
   procedure setFontPointSize (self : access Inst; s_P : float);
   procedure setFontUnderline (self : access Inst; b_P : bool);
   procedure setFontWeight (self : access Inst; w_P : int);
   procedure setHtml (self : access Inst; text_P : str);
   procedure setLineWrapColumnOrWidth (self : access Inst; w_P : int);
   procedure setLineWrapMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QTextEdit.LineWrapMode.Inst'Class);
   procedure setMarkdown (self : access Inst; markdown_P : str);
   procedure setOverwriteMode (self : access Inst; overwrite_P : bool);
   procedure setPlaceholderText (self : access Inst; placeholderText_P : str);
   procedure setPlainText (self : access Inst; text_P : str);
   procedure setReadOnly (self : access Inst; ro_P : bool);
   procedure setTabChangesFocus (self : access Inst; b_P : bool);
   procedure setTabStopDistance (self : access Inst; distance_P : float);
   procedure setText (self : access Inst; text_P : str);
   procedure setTextBackgroundColor
     (self : access Inst;
      c_P  : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setTextColor
     (self : access Inst;
      c_P  : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setTextCursor (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class);
   procedure setTextInteractionFlags
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class);
   procedure setUndoRedoEnabled (self : access Inst; enable_P : bool);
   procedure setWordWrapMode (self : access Inst; policy_P : access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class);
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function tabChangesFocus (self : access Inst) return bool;
   function tabStopDistance (self : access Inst) return float;
   function textBackgroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function textColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function textCursor (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function textInteractionFlags (self : access Inst) return access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class;
   procedure timerEvent (self : access Inst; e_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function toHtml (self : access Inst) return str;
   function toMarkdown
     (self : access Inst; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class) return str;
   function toPlainText (self : access Inst) return str;
   procedure undo (self : access Inst);
   procedure wheelEvent (self : access Inst; e_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
   function wordWrapMode (self : access Inst) return access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class;
   procedure zoomIn (self : access Inst; range_K_P : int);
   procedure zoomInF (self : access Inst; range_K_P : float);
   procedure zoomOut (self : access Inst; range_K_P : int);
end QtAda6.QtWidgets.QTextEdit;
