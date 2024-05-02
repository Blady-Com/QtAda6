-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qprogressdialog.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QProgressBar;
limited with QtAda6.QtWidgets.QPushButton;
limited with QtAda6.QtWidgets.QLabel;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QDialog;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QProgressDialog is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   procedure Finalize (Self : in out Class);
   function canceled (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- canceled()
   function Create
     (labelText_P : str; cancelButtonText_P : str; minimum_P : int; maximum_P : int;
      parent_P    : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      flags_P     : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      flags_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   function autoClose (self : access Inst) return bool;
   function autoReset (self : access Inst) return bool;
   procedure cancel (self : access Inst);
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   procedure forceShow (self : access Inst);
   function labelText (self : access Inst) return str;
   function maximum (self : access Inst) return int;
   function minimum (self : access Inst) return int;
   function minimumDuration (self : access Inst) return int;
   procedure open (self : access Inst);
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   procedure reset (self : access Inst);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setAutoClose (self : access Inst; close_P : bool);
   procedure setAutoReset (self : access Inst; reset_P : bool);
   procedure setBar (self : access Inst; bar_P : access QtAda6.QtWidgets.QProgressBar.Inst'Class);
   procedure setCancelButton (self : access Inst; button_P : access QtAda6.QtWidgets.QPushButton.Inst'Class);
   procedure setCancelButtonText (self : access Inst; text_P : str);
   procedure setLabel (self : access Inst; label_P : access QtAda6.QtWidgets.QLabel.Inst'Class);
   procedure setLabelText (self : access Inst; text_P : str);
   procedure setMaximum (self : access Inst; maximum_P : int);
   procedure setMinimum (self : access Inst; minimum_P : int);
   procedure setMinimumDuration (self : access Inst; ms_P : int);
   procedure setRange (self : access Inst; minimum_P : int; maximum_P : int);
   procedure setValue (self : access Inst; progress_P : int);
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function value (self : access Inst) return int;
   function wasCanceled (self : access Inst) return bool;
end QtAda6.QtWidgets.QProgressDialog;
