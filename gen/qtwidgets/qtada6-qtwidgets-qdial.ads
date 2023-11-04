-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdial.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QStyleOptionSlider;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QAbstractSlider.SliderChange;
with QtAda6.QtWidgets.QAbstractSlider;
package QtAda6.QtWidgets.QDial is
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractSlider.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionSlider.Inst'Class);
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; me_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; me_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; me_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function notchSize (self : access Inst) return int;
   function notchTarget (self : access Inst) return float;
   function notchesVisible (self : access Inst) return bool;
   procedure paintEvent (self : access Inst; pe_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resizeEvent (self : access Inst; re_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setNotchTarget (self : access Inst; target_P : float);
   procedure setNotchesVisible (self : access Inst; visible_P : bool);
   procedure setWrapping (self : access Inst; on_P : bool);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure sliderChange
     (self : access Inst; change_P : access QtAda6.QtWidgets.QAbstractSlider.SliderChange.Inst'Class);
   function wrapping (self : access Inst) return bool;
end QtAda6.QtWidgets.QDial;
