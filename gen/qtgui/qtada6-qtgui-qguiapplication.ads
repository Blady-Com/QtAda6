-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qguiapplication.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QWindow;
limited with QtAda6.QtCore.Qt.ApplicationState;
limited with QtAda6.QtGui.QCursor;
limited with QtAda6.QtCore.Qt.CursorShape;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QClipboard;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtCore.Qt.HighDpiScaleFactorRoundingPolicy;
limited with QtAda6.QtGui.QInputMethod;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtCore.Qt.MouseButton;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QScreen;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QStyleHints;
with QtAda6.QtCore.QCoreApplication;
package QtAda6.QtGui.QGuiApplication is
   type ClassVar_Signal is access Any;
   type Sequence_str is array (Positive range <>) of str;
   type List_QtAda6_QtGui_QWindow is access Any;
   type Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type List_QtAda6_QtGui_QScreen is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is access Any;
   type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QCoreApplication.Inst with null record;
   procedure Finalize (Self : in out Class);
   applicationDisplayNameChanged : ClassVar_Signal;-- applicationDisplayNameChanged()
   applicationStateChanged       : ClassVar_Signal;-- applicationStateChanged(Qt::ApplicationState)
   commitDataRequest             : ClassVar_Signal;-- commitDataRequest(QSessionManager&)
   focusObjectChanged            : ClassVar_Signal;-- focusObjectChanged(QObject*)
   focusWindowChanged            : ClassVar_Signal;-- focusWindowChanged(QWindow*)
   fontChanged                   : ClassVar_Signal;-- fontChanged(QFont)
   fontDatabaseChanged           : ClassVar_Signal;-- fontDatabaseChanged()
   lastWindowClosed              : ClassVar_Signal;-- lastWindowClosed()
   layoutDirectionChanged        : ClassVar_Signal;-- layoutDirectionChanged(Qt::LayoutDirection)
   paletteChanged                : ClassVar_Signal;-- paletteChanged(QPalette)
   primaryScreenChanged          : ClassVar_Signal;-- primaryScreenChanged(QScreen*)
   saveStateRequest              : ClassVar_Signal;-- saveStateRequest(QSessionManager&)
   screenAdded                   : ClassVar_Signal;-- screenAdded(QScreen*)
   screenRemoved                 : ClassVar_Signal;-- screenRemoved(QScreen*)
   function Create return Class;
   function Create (arg_1_P : Sequence_str) return Class;
   function allWindows return List_QtAda6_QtGui_QWindow;
   function applicationDisplayName return str;
   function applicationState return access QtAda6.QtCore.Qt.ApplicationState.Inst'Class;
   procedure changeOverrideCursor
     (arg_1_P : Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap);
   function clipboard return access QtAda6.QtGui.QClipboard.Inst'Class;
   function desktopFileName return str;
   function desktopSettingsAware return bool;
   function devicePixelRatio (self : access Inst) return float;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function exec return int;
   function exec_U (self : access Inst) return int;
   function focusObject return access QtAda6.QtCore.QObject.Inst'Class;
   function focusWindow return access QtAda6.QtGui.QWindow.Inst'Class;
   function font return access QtAda6.QtGui.QFont.Inst'Class;
   function highDpiScaleFactorRoundingPolicy return access QtAda6.QtCore.Qt.HighDpiScaleFactorRoundingPolicy.Inst'Class;
   function inputMethod return access QtAda6.QtGui.QInputMethod.Inst'Class;
   function isLeftToRight return bool;
   function isRightToLeft return bool;
   function isSavingSession (self : access Inst) return bool;
   function isSessionRestored (self : access Inst) return bool;
   function keyboardModifiers return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function layoutDirection return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function modalWindow return access QtAda6.QtGui.QWindow.Inst'Class;
   function mouseButtons return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   function notify
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function overrideCursor return access QtAda6.QtGui.QCursor.Inst'Class;
   function palette return access QtAda6.QtGui.QPalette.Inst'Class;
   function platformFunction (function_K_P : Union_QtAda6_QtCore_QByteArray_bytes) return int;
   function platformName return str;
   function primaryScreen return access QtAda6.QtGui.QScreen.Inst'Class;
   function queryKeyboardModifiers return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function quitOnLastWindowClosed return bool;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int;
   procedure restoreOverrideCursor;
   function screenAt (point_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtGui.QScreen.Inst'Class;
   function screens return List_QtAda6_QtGui_QScreen;
   function sessionId (self : access Inst) return str;
   function sessionKey (self : access Inst) return str;
   procedure setApplicationDisplayName (name_P : str);
   procedure setBadgeNumber (self : access Inst; number_P : int);
   procedure setDesktopFileName (name_P : str);
   procedure setDesktopSettingsAware (on_P : bool);
   procedure setFont (arg_1_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
   procedure setHighDpiScaleFactorRoundingPolicy
     (policy_P : access QtAda6.QtCore.Qt.HighDpiScaleFactorRoundingPolicy.Inst'Class);
   procedure setLayoutDirection (direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class);
   function setOverrideCursor
     (arg_1_P : Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap) return Object;
   procedure setPalette (pal_P : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor);
   procedure setQuitOnLastWindowClosed (quit_P : bool);
   procedure setWindowIcon (icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   function styleHints return access QtAda6.QtGui.QStyleHints.Inst'Class;
   procedure sync;
   function topLevelAt (pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtGui.QWindow.Inst'Class;
   function topLevelWindows return List_QtAda6_QtGui_QWindow;
   function windowIcon return access QtAda6.QtGui.QIcon.Inst'Class;
end QtAda6.QtGui.QGuiApplication;
