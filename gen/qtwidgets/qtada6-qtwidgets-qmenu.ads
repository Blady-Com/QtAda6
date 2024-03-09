-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmenu.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtGui.QActionEvent;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.Qt.ConnectionType;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QEnterEvent;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtWidgets.QStyleOptionMenuItem;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QTimerEvent;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QMenu is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   type UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is new Any;
   type UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int_NoneType is
     new Any;
   type UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int is
     new Any;
   subtype SEQUENCE_QtAda6_QtGui_QAction is QtAda6.QtGui.QAction.Class_Array;
   procedure Finalize (Self : in out Class);
   function aboutToHide (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- aboutToHide()
   function aboutToShow (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- aboutToShow()
   function hovered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- hovered(QAction*)
   function triggered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- triggered(QAction*)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (title_P : str; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function actionAt
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   procedure actionEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QActionEvent.Inst'Class);
   function actionGeometry
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QAction.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function activeAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure addAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure addAction
     (self       : access Inst; arg_1_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      arg_3_P    : access Object'Class;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int_NoneType :=
        null);
   function addAction
     (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction (self : access Inst; text_P : str) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure addAction
     (self       : access Inst; text_P : str; arg_2_P : access Object'Class;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int_NoneType :=
        null);
   function addAction
     (self : access Inst; text_P : str; callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self     : access Inst; text_P : str; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addMenu
     (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; title_P : str)
      return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function addMenu
     (self : access Inst; menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addMenu (self : access Inst; title_P : str) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function addSection
     (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addSection (self : access Inst; text_P : str) return access QtAda6.QtGui.QAction.Inst'Class;
   function addSeparator (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   function columnCount (self : access Inst) return int;
   function defaultAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure enterEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QEnterEvent.Inst'Class);
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function exec
     (actions_P : SEQUENCE_QtAda6_QtGui_QAction; pos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      at_K_P    : access QtAda6.QtGui.QAction.Inst'Class     := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return access QtAda6.QtGui.QAction.Inst'Class;
   function exec (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   function exec
     (self   : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      at_K_P : access QtAda6.QtGui.QAction.Inst'Class := null) return access QtAda6.QtGui.QAction.Inst'Class;
   function exec_U (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   function exec_U
     (self     : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      action_P : access QtAda6.QtGui.QAction.Inst'Class := null) return access QtAda6.QtGui.QAction.Inst'Class;
   function exec_U
     (self     : access Inst; arg_1_P : SEQUENCE_QtAda6_QtGui_QAction; arg_2_P : access QtAda6.QtCore.QPoint.Inst'Class;
      at_K_P   : access QtAda6.QtGui.QAction.Inst'Class     := null;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return access QtAda6.QtGui.QAction.Inst'Class;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure hideEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   procedure hideTearOffMenu (self : access Inst);
   function icon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   procedure initStyleOption
     (self     : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionMenuItem.Inst'Class;
      action_P : access QtAda6.QtGui.QAction.Inst'Class);
   function insertMenu
     (self   : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class;
      menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function insertSection
     (self   : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class;
      icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function insertSection
     (self : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function insertSeparator
     (self : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function isTearOffEnabled (self : access Inst) return bool;
   function isTearOffMenuVisible (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure leaveEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function menuAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   function menuInAction
     (action_P : access QtAda6.QtGui.QAction.Inst'Class) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure popup
     (self   : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      at_K_P : access QtAda6.QtGui.QAction.Inst'Class := null);
   function separatorsCollapsible (self : access Inst) return bool;
   procedure setActiveAction (self : access Inst; act_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure setAsDockMenu (self : access Inst);
   procedure setDefaultAction (self : access Inst; arg_1_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure setIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   procedure setSeparatorsCollapsible (self : access Inst; collapse_P : bool);
   procedure setTearOffEnabled (self : access Inst; arg_1_P : bool);
   procedure setTitle (self : access Inst; title_P : str);
   procedure setToolTipsVisible (self : access Inst; visible_P : bool);
   procedure showTearOffMenu (self : access Inst);
   procedure showTearOffMenu (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function title (self : access Inst) return str;
   function toolTipsVisible (self : access Inst) return bool;
   procedure wheelEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
end QtAda6.QtWidgets.QMenu;
