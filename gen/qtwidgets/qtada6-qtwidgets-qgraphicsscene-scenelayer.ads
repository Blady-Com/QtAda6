-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsscene-scenelayer.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QGraphicsScene.SceneLayer is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   ItemLayer       : QGraphicsScene.SceneLayer.Class;-- 0x1
   BackgroundLayer : QGraphicsScene.SceneLayer.Class;-- 0x2
   ForegroundLayer : QGraphicsScene.SceneLayer.Class;-- 0x4
   AllLayers       : QGraphicsScene.SceneLayer.Class;-- 0xffff
end QtAda6.QtWidgets.QGraphicsScene.SceneLayer;
