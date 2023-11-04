-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsizegrip.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QMoveEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QSizeGrip is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return Class;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure hideEvent (self : access Inst; hideEvent_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; mouseEvent_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure moveEvent (self : access Inst; moveEvent_P : access QtAda6.QtGui.QMoveEvent.Inst'Class);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setVisible (self : access Inst; arg_1_P : bool);
   procedure showEvent (self : access Inst; showEvent_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
end QtAda6.QtWidgets.QSizeGrip;
