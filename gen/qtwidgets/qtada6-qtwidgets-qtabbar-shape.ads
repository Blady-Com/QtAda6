-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtabbar-shape.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QTabBar.Shape is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   RoundedNorth    : QTabBar.Shape.Class;-- 0x0
   RoundedSouth    : QTabBar.Shape.Class;-- 0x1
   RoundedWest     : QTabBar.Shape.Class;-- 0x2
   RoundedEast     : QTabBar.Shape.Class;-- 0x3
   TriangularNorth : QTabBar.Shape.Class;-- 0x4
   TriangularSouth : QTabBar.Shape.Class;-- 0x5
   TriangularWest  : QTabBar.Shape.Class;-- 0x6
   TriangularEast  : QTabBar.Shape.Class;-- 0x7
end QtAda6.QtWidgets.QTabBar.Shape;
