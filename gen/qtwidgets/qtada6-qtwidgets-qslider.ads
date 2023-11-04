-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qslider.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QStyleOptionSlider;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtWidgets.QSlider.TickPosition;
with QtAda6.QtWidgets.QAbstractSlider;
package QtAda6.QtWidgets.QSlider is
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractSlider.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionSlider.Inst'Class);
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; ev_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setTickInterval (self : access Inst; ti_P : int);
   procedure setTickPosition (self : access Inst; position_P : access QtAda6.QtWidgets.QSlider.TickPosition.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function tickInterval (self : access Inst) return int;
   function tickPosition_F (self : access Inst) return access QtAda6.QtWidgets.QSlider.TickPosition.Inst'Class;
end QtAda6.QtWidgets.QSlider;
