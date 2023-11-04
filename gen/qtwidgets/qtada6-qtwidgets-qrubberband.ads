-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qrubberband.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QRubberBand.Shape;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QStyleOptionRubberBand;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QMoveEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QShowEvent;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QRubberBand is
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (arg_1_P : access QtAda6.QtWidgets.QRubberBand.Shape.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionRubberBand.Inst'Class);
   procedure move (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure move (self : access Inst; x_P : int; y_P : int);
   procedure moveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMoveEvent.Inst'Class);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resize (self : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure resize (self : access Inst; w_P : int; h_P : int);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setGeometry (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setGeometry (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   function shape_F (self : access Inst) return access QtAda6.QtWidgets.QRubberBand.Shape.Inst'Class;
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
end QtAda6.QtWidgets.QRubberBand;
