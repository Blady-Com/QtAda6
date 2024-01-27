-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicstransform.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QMatrix4x4;
limited with QtAda6.QtGui.QTransform;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QGraphicsTransform is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure applyTo (self : access Inst; matrix_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform);
   procedure update (self : access Inst);
end QtAda6.QtWidgets.QGraphicsTransform;
