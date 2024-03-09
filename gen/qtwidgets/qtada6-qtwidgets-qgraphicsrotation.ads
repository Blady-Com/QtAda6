-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsrotation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QVector3D;
limited with QtAda6.QtCore.Qt.Axis;
with QtAda6.QtWidgets.QGraphicsTransform;
package QtAda6.QtWidgets.QGraphicsRotation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsTransform.Inst with null record;
   type UNION_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform is new Any;
   procedure Finalize (Self : in out Class);
   function angleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- angleChanged()
   function axisChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- axisChanged()
   function originChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- originChanged()
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function angle (self : access Inst) return float;
   procedure applyTo (self : access Inst; matrix_P : UNION_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform);
   function axis (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class;
   function origin (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class;
   procedure setAngle (self : access Inst; arg_1_P : float);
   procedure setAxis (self : access Inst; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class);
   procedure setAxis (self : access Inst; axis_P : access QtAda6.QtGui.QVector3D.Inst'Class);
   procedure setOrigin (self : access Inst; point_P : access QtAda6.QtGui.QVector3D.Inst'Class);
end QtAda6.QtWidgets.QGraphicsRotation;
