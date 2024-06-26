-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qscrollprepareevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QScrollPrepareEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QScrollPrepareEvent.Inst'Class) return Class;
   function Create (startPos_P : access QtAda6.QtCore.QPointF.Inst'Class) return Class;
   function Create (startPos_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class;
   function Create (startPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QScrollPrepareEvent.Inst'Class;
   function contentPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function contentPosRange (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure setContentPos (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setContentPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setContentPos (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure setContentPosRange (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure setContentPosRange (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setViewportSize (self : access Inst; size_P : access QtAda6.QtCore.QSizeF.Inst'Class);
   procedure setViewportSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   function startPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function viewportSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
end QtAda6.QtGui.QScrollPrepareEvent;
