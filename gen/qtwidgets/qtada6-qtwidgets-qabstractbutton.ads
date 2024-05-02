-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtWidgets.QButtonGroup;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.Qt.Key;
limited with QtAda6.QtGui.QKeySequence;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QAbstractButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function clicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- clicked()
   function pressed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- pressed()
   function released (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- released()
   function toggled (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- toggled(bool)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure animateClick (self : access Inst);
   function autoExclusive (self : access Inst) return bool;
   function autoRepeat (self : access Inst) return bool;
   function autoRepeatDelay (self : access Inst) return int;
   function autoRepeatInterval (self : access Inst) return int;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure checkStateSet (self : access Inst);
   procedure click (self : access Inst);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure focusOutEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function group (self : access Inst) return access QtAda6.QtWidgets.QButtonGroup.Inst'Class;
   function hitButton (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   function icon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function isCheckable (self : access Inst) return bool;
   function isChecked (self : access Inst) return bool;
   function isDown (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure nextCheckState (self : access Inst);
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setAutoExclusive (self : access Inst; arg_1_P : bool);
   procedure setAutoRepeat (self : access Inst; arg_1_P : bool);
   procedure setAutoRepeatDelay (self : access Inst; arg_1_P : int);
   procedure setAutoRepeatInterval (self : access Inst; arg_1_P : int);
   procedure setCheckable (self : access Inst; arg_1_P : bool);
   procedure setChecked (self : access Inst; arg_1_P : bool);
   procedure setDown (self : access Inst; arg_1_P : bool);
   procedure setIcon (self : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class);
   procedure setIcon (self : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setIconSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setShortcut (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.Key.Inst'Class);
   procedure setShortcut (self : access Inst; key_P : access QtAda6.QtGui.QKeySequence.Inst'Class);
   procedure setShortcut (self : access Inst; key_P : access QtAda6.QtCore.QKeyCombination.Inst'Class);
   procedure setShortcut (self : access Inst; key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class);
   procedure setShortcut (self : access Inst; key_P : str);
   procedure setShortcut (self : access Inst; key_P : int);
   procedure setText (self : access Inst; text_P : str);
   function shortcut (self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class;
   function text (self : access Inst) return str;
   procedure timerEvent (self : access Inst; e_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   procedure toggle (self : access Inst);
end QtAda6.QtWidgets.QAbstractButton;
