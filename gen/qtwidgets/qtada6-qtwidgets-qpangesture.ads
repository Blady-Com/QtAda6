-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qpangesture.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QPointF;
with QtAda6.QtWidgets.QGesture;
package QtAda6.QtWidgets.QPanGesture is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGesture.Inst with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function acceleration (self : access Inst) return float;
   function delta_K (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastOffset (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function offset (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setAcceleration (self : access Inst; value_P : float);
   procedure setLastOffset
     (self : access Inst; value_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setOffset
     (self : access Inst; value_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
end QtAda6.QtWidgets.QPanGesture;
