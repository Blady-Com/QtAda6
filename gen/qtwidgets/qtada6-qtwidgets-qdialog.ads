-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdialog.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtGui.QShowEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QDialog is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function accepted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- accepted()
   function finished (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- finished(int)
   function rejected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- rejected()
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   procedure accept_K (self : access Inst);
   procedure adjustPosition (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure closeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   procedure contextMenuEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   procedure done (self : access Inst; arg_1_P : int);
   function eventFilter
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function exec (self : access Inst) return int;
   function exec_U (self : access Inst) return int;
   function isSizeGripEnabled (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure open (self : access Inst);
   procedure reject (self : access Inst);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function result (self : access Inst) return int;
   procedure setModal (self : access Inst; modal_P : bool);
   procedure setResult (self : access Inst; r_P : int);
   procedure setSizeGripEnabled (self : access Inst; arg_1_P : bool);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
end QtAda6.QtWidgets.QDialog;
