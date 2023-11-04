-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgroupbox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QChildEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtWidgets.QStyleOptionGroupBox;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QGroupBox is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   clicked : ClassVar_Signal;-- clicked()
   toggled : ClassVar_Signal;-- toggled(bool)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (title_P : str; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure childEvent (self : access Inst; event_P : access QtAda6.QtCore.QChildEvent.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionGroupBox.Inst'Class);
   function isCheckable (self : access Inst) return bool;
   function isChecked (self : access Inst) return bool;
   function isFlat (self : access Inst) return bool;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setAlignment (self : access Inst; alignment_P : int);
   procedure setCheckable (self : access Inst; checkable_P : bool);
   procedure setChecked (self : access Inst; checked_P : bool);
   procedure setFlat (self : access Inst; flat_P : bool);
   procedure setTitle (self : access Inst; title_P : str);
   function title (self : access Inst) return str;
end QtAda6.QtWidgets.QGroupBox;
