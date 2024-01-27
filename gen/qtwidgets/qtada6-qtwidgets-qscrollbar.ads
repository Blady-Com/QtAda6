-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qscrollbar.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtWidgets.QStyleOptionSlider;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QAbstractSlider.SliderChange;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QAbstractSlider;
package QtAda6.QtWidgets.QScrollBar is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractSlider.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (arg_1_P  : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure contextMenuEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure hideEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionSlider.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure sliderChange
     (self : access Inst; change_P : access QtAda6.QtWidgets.QAbstractSlider.SliderChange.Inst'Class);
   procedure wheelEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
end QtAda6.QtWidgets.QScrollBar;
