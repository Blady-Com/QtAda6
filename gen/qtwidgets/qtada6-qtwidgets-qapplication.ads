-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qapplication.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QFontMetrics;
limited with QtAda6.QtCore.Qt.UIEffect;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtWidgets.QStyle;
limited with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QGuiApplication;
package QtAda6.QtWidgets.QApplication is
   type ClassVar_Signal is access Any;
   type Sequence_str is array (Positive range <>) of str;
   type List_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Optional_bytes is access Any;
   type Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QGuiApplication.Inst with null record;
   procedure Finalize (Self : in out Class);
   focusChanged : ClassVar_Signal;-- focusChanged(QWidget*,QWidget*)
   function Create return Class;
   function Create (arg_1_P : Sequence_str) return Class;
   procedure aboutQt;
   function activeModalWidget return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function activePopupWidget return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function activeWindow return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure alert (widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; duration_P : int);
   function allWidgets return List_QtAda6_QtWidgets_QWidget;
   function autoSipEnabled (self : access Inst) return bool;
   procedure beep;
   procedure closeAllWindows;
   function cursorFlashTime return int;
   function doubleClickInterval return int;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function exec return int;
   function exec_U (self : access Inst) return int;
   function focusWidget return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function font return access QtAda6.QtGui.QFont.Inst'Class;
   function font (arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtGui.QFont.Inst'Class;
   function font (className_P : bytes) return access QtAda6.QtGui.QFont.Inst'Class;
   function fontMetrics return access QtAda6.QtGui.QFontMetrics.Inst'Class;
   function isEffectEnabled (arg_1_P : access QtAda6.QtCore.Qt.UIEffect.Inst'Class) return bool;
   function keyboardInputInterval return int;
   function notify
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function palette return access QtAda6.QtGui.QPalette.Inst'Class;
   function palette
     (arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtGui.QPalette.Inst'Class;
   function palette (className_P : bytes) return access QtAda6.QtGui.QPalette.Inst'Class;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int;
   procedure setActiveWindow (act_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setAutoSipEnabled (self : access Inst; enabled_P : bool);
   procedure setCursorFlashTime (arg_1_P : int);
   procedure setDoubleClickInterval (arg_1_P : int);
   procedure setEffectEnabled (arg_1_P : access QtAda6.QtCore.Qt.UIEffect.Inst'Class; enable_P : bool);
   procedure setFont (arg_1_P : Union_QtAda6_QtGui_QFont_str_Sequence_str; className_P : Optional_bytes);
   procedure setKeyboardInputInterval (arg_1_P : int);
   procedure setPalette
     (arg_1_P     : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor;
      className_P : Optional_bytes);
   procedure setStartDragDistance (l_P : int);
   procedure setStartDragTime (ms_P : int);
   procedure setStyle (arg_1_P : access QtAda6.QtWidgets.QStyle.Inst'Class);
   function setStyle (arg_1_P : str) return access QtAda6.QtWidgets.QStyle.Inst'Class;
   procedure setStyleSheet (self : access Inst; sheet_P : str);
   procedure setWheelScrollLines (arg_1_P : int);
   function startDragDistance return int;
   function startDragTime return int;
   function style return access QtAda6.QtWidgets.QStyle.Inst'Class;
   function styleSheet (self : access Inst) return str;
   function topLevelAt (p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function topLevelAt (x_P : int; y_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function topLevelWidgets return List_QtAda6_QtWidgets_QWidget;
   function wheelScrollLines return int;
   function widgetAt (p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function widgetAt (x_P : int; y_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QApplication;
