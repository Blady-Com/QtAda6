-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlineedit.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtWidgets.QLineEdit.ActionPosition;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.Qt.ConnectionType;
limited with QtAda6.QtGui.QKeySequence;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QCompleter;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtCore.Qt.CursorMoveStyle;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QDragEnterEvent;
limited with QtAda6.QtGui.QDragLeaveEvent;
limited with QtAda6.QtGui.QDragMoveEvent;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtWidgets.QLineEdit.EchoMode;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtWidgets.QStyleOptionFrame;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtGui.QValidator;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QLineEdit is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function cursorPositionChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cursorPositionChanged(int,int)
   function editingFinished (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- editingFinished()
   function inputRejected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- inputRejected()
   function returnPressed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- returnPressed()
   function selectionChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- selectionChanged()
   function textChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- textChanged(QString)
   function textEdited (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- textEdited(QString)
   function Create (arg_1_P : str; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure addAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure addAction
     (self       : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class;
      position_P : access QtAda6.QtWidgets.QLineEdit.ActionPosition.Inst'Class);
-- procedure addAction(self : access Inst;arg_1_P : access QtAda6.QtGui.QAction.Inst'Class);
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class;
      position_P : access QtAda6.QtWidgets.QLineEdit.ActionPosition.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      position_P : access QtAda6.QtWidgets.QLineEdit.ActionPosition.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str; shortcut_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str; shortcut_P : int)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str; shortcut_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str; shortcut_P : int)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str; shortcut_P : str;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str; shortcut_P : int;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str; shortcut_P : str;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str; shortcut_P : int;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class; receiver_P : access QtAda6.QtCore.QObject.Inst'Class;
      member_P   : bytes; type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str; shortcut_P : str;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str; shortcut_P : int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class; receiver_P : access QtAda6.QtCore.QObject.Inst'Class;
      member_P   : bytes; type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str; shortcut_P : str;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str; shortcut_P : int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction (self : access Inst; text_P : str) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self     : access Inst; text_P : str; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; shortcut_P : str) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; shortcut_P : int) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str; shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str; shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str; shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; shortcut_P : str; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; shortcut_P : int; callable_P : access Object'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str; shortcut_P : access QtAda6.QtGui.QKeySequence.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str; shortcut_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str; shortcut_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self     : access Inst; text_P : str; shortcut_P : str; receiver_P : access QtAda6.QtCore.QObject.Inst'Class;
      member_P : bytes; type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self     : access Inst; text_P : str; shortcut_P : int; receiver_P : access QtAda6.QtCore.QObject.Inst'Class;
      member_P : bytes; type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   procedure backspace (self : access Inst);
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   function completer (self : access Inst) return access QtAda6.QtWidgets.QCompleter.Inst'Class;
   procedure contextMenuEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   procedure copy (self : access Inst);
   function createStandardContextMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   procedure cursorBackward (self : access Inst; mark_P : bool; steps_P : int := 0);
   procedure cursorForward (self : access Inst; mark_P : bool; steps_P : int := 0);
   function cursorMoveStyle (self : access Inst) return access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class;
   function cursorPosition (self : access Inst) return int;
   function cursorPositionAt (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return int;
   function cursorRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure cursorWordBackward (self : access Inst; mark_P : bool);
   procedure cursorWordForward (self : access Inst; mark_P : bool);
   procedure cut (self : access Inst);
   procedure del_U (self : access Inst);
   procedure deselect (self : access Inst);
   function displayText (self : access Inst) return str;
   function dragEnabled (self : access Inst) return bool;
   procedure dragEnterEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class);
   procedure dragLeaveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class);
   procedure dragMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure dropEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   function echoMode_F (self : access Inst) return access QtAda6.QtWidgets.QLineEdit.EchoMode.Inst'Class;
   procedure end_K (self : access Inst; mark_P : bool);
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure focusOutEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function hasAcceptableInput (self : access Inst) return bool;
   function hasFrame (self : access Inst) return bool;
   function hasSelectedText (self : access Inst) return bool;
   procedure home (self : access Inst; mark_P : bool);
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionFrame.Inst'Class);
   function inputMask (self : access Inst) return str;
   procedure inputMethodEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodQuery
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   function inputMethodQuery
     (self : access Inst; property_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class; argument_P : Any)
      return Any;
   procedure insert (self : access Inst; arg_1_P : str);
   function isClearButtonEnabled (self : access Inst) return bool;
   function isModified (self : access Inst) return bool;
   function isReadOnly (self : access Inst) return bool;
   function isRedoAvailable (self : access Inst) return bool;
   function isUndoAvailable (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function maxLength (self : access Inst) return int;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseDoubleClickEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure paste (self : access Inst);
   function placeholderText (self : access Inst) return str;
   procedure redo (self : access Inst);
   procedure selectAll (self : access Inst);
   function selectedText (self : access Inst) return str;
   function selectionEnd (self : access Inst) return int;
   function selectionLength (self : access Inst) return int;
   function selectionStart (self : access Inst) return int;
   procedure setAlignment (self : access Inst; flag_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setClearButtonEnabled (self : access Inst; enable_P : bool);
   procedure setCompleter (self : access Inst; completer_P : access QtAda6.QtWidgets.QCompleter.Inst'Class);
   procedure setCursorMoveStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class);
   procedure setCursorPosition (self : access Inst; arg_1_P : int);
   procedure setDragEnabled (self : access Inst; b_P : bool);
   procedure setEchoMode (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLineEdit.EchoMode.Inst'Class);
   procedure setFrame (self : access Inst; arg_1_P : bool);
   procedure setInputMask (self : access Inst; inputMask_P : str);
   procedure setMaxLength (self : access Inst; arg_1_P : int);
   procedure setModified (self : access Inst; arg_1_P : bool);
   procedure setPlaceholderText (self : access Inst; arg_1_P : str);
   procedure setReadOnly (self : access Inst; arg_1_P : bool);
   procedure setSelection (self : access Inst; arg_1_P : int; arg_2_P : int);
   procedure setText (self : access Inst; arg_1_P : str);
   procedure setTextMargins (self : access Inst; left_P : int; top_P : int; right_P : int; bottom_P : int);
   procedure setTextMargins (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class);
   procedure setValidator (self : access Inst; arg_1_P : access QtAda6.QtGui.QValidator.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function text (self : access Inst) return str;
   function textMargins (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class;
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   procedure undo (self : access Inst);
   function validator (self : access Inst) return access QtAda6.QtGui.QValidator.Inst'Class;
end QtAda6.QtWidgets.QLineEdit;
