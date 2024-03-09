-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractgraphicsshapeitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QPen;
with QtAda6.QtWidgets.QGraphicsItem;
package QtAda6.QtWidgets.QAbstractGraphicsShapeItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsItem.Inst with null record;
   type UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     new Any;
   type UNION_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function pen (self : access Inst) return access QtAda6.QtGui.QPen.Inst'Class;
   procedure setBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setPen (self : access Inst; pen_P : UNION_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor);
end QtAda6.QtWidgets.QAbstractGraphicsShapeItem;
