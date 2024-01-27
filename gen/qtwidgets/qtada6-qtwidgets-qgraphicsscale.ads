-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsscale.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QMatrix4x4;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QVector3D;
with QtAda6.QtWidgets.QGraphicsTransform;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QGraphicsScale is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsTransform.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform is new Any;
   procedure Finalize (Self : in out Class);
   function originChanged (self : access Inst) return CLASSVAR_Signal;-- originChanged()
   function scaleChanged (self : access Inst) return CLASSVAR_Signal;-- scaleChanged()
   function xScaleChanged (self : access Inst) return CLASSVAR_Signal;-- xScaleChanged()
   function yScaleChanged (self : access Inst) return CLASSVAR_Signal;-- yScaleChanged()
   function zScaleChanged (self : access Inst) return CLASSVAR_Signal;-- zScaleChanged()
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure applyTo (self : access Inst; matrix_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform);
   function origin (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class;
   procedure setOrigin (self : access Inst; point_P : access QtAda6.QtGui.QVector3D.Inst'Class);
   procedure setXScale (self : access Inst; arg_1_P : float);
   procedure setYScale (self : access Inst; arg_1_P : float);
   procedure setZScale (self : access Inst; arg_1_P : float);
   function xScale (self : access Inst) return float;
   function yScale (self : access Inst) return float;
   function zScale (self : access Inst) return float;
end QtAda6.QtWidgets.QGraphicsScale;
