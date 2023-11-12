-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qscrollprepareevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QScrollPrepareEvent.Inst'Class) return Class;
   function Create
     (startPos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QScrollPrepareEvent.Inst'Class;
   function contentPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function contentPosRange (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure setContentPos
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setContentPosRange (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure setViewportSize (self : access Inst; size_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize);
   function startPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function viewportSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
end QtAda6.QtGui.QScrollPrepareEvent;
