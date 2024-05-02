-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcheckbox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.CheckState;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyleOptionButton;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QAbstractButton;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QCheckBox is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractButton.Inst with null record;
   procedure Finalize (Self : in out Class);
   function stateChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- stateChanged(int)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (text_P : str; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function checkState (self : access Inst) return access QtAda6.QtCore.Qt.CheckState.Inst'Class;
   procedure checkStateSet (self : access Inst);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function hitButton (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionButton.Inst'Class);
   function isTristate (self : access Inst) return bool;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure nextCheckState (self : access Inst);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setCheckState (self : access Inst; state_P : access QtAda6.QtCore.Qt.CheckState.Inst'Class);
   procedure setTristate (self : access Inst; y_P : bool := False);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
end QtAda6.QtWidgets.QCheckBox;
