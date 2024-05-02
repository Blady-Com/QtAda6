-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractspinbox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtWidgets.QAbstractSpinBox.ButtonSymbols;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtWidgets.QAbstractSpinBox.CorrectionMode;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtWidgets.QStyleOptionSpinBox;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QLineEdit;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag;
limited with QtAda6.QtCore.QTimerEvent;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QAbstractSpinBox is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function editingFinished (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- editingFinished()
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function buttonSymbols_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractSpinBox.ButtonSymbols.Inst'Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   procedure contextMenuEvent (self : access Inst; event_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   function correctionMode_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractSpinBox.CorrectionMode.Inst'Class;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function fixup (self : access Inst; input_P : str) return str;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function hasAcceptableInput (self : access Inst) return bool;
   function hasFrame (self : access Inst) return bool;
   procedure hideEvent (self : access Inst; event_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionSpinBox.Inst'Class);
   function inputMethodQuery
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   procedure interpretText (self : access Inst);
   function isAccelerated (self : access Inst) return bool;
   function isGroupSeparatorShown (self : access Inst) return bool;
   function isReadOnly (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function keyboardTracking (self : access Inst) return bool;
   function lineEdit (self : access Inst) return access QtAda6.QtWidgets.QLineEdit.Inst'Class;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure selectAll (self : access Inst);
   procedure setAccelerated (self : access Inst; on_P : bool);
   procedure setAlignment (self : access Inst; flag_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setButtonSymbols
     (self : access Inst; bs_P : access QtAda6.QtWidgets.QAbstractSpinBox.ButtonSymbols.Inst'Class);
   procedure setCorrectionMode
     (self : access Inst; cm_P : access QtAda6.QtWidgets.QAbstractSpinBox.CorrectionMode.Inst'Class);
   procedure setFrame (self : access Inst; arg_1_P : bool);
   procedure setGroupSeparatorShown (self : access Inst; shown_P : bool);
   procedure setKeyboardTracking (self : access Inst; kt_P : bool);
   procedure setLineEdit (self : access Inst; edit_P : access QtAda6.QtWidgets.QLineEdit.Inst'Class);
   procedure setReadOnly (self : access Inst; r_P : bool);
   procedure setSpecialValueText (self : access Inst; txt_P : str);
   procedure setWrapping (self : access Inst; w_P : bool);
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function specialValueText (self : access Inst) return str;
   procedure stepBy (self : access Inst; steps_P : int);
   procedure stepDown (self : access Inst);
   function stepEnabled (self : access Inst) return access QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag.Inst'Class;
   procedure stepUp (self : access Inst);
   function text (self : access Inst) return str;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function validate (self : access Inst; input_P : str; pos_P : int) return access Object'Class;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
   function wrapping (self : access Inst) return bool;
end QtAda6.QtWidgets.QAbstractSpinBox;
