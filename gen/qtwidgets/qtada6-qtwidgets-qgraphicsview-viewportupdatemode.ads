-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsview-viewportupdatemode.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   FullViewportUpdate         : QGraphicsView.ViewportUpdateMode.Class;-- 0x0
   MinimalViewportUpdate      : QGraphicsView.ViewportUpdateMode.Class;-- 0x1
   SmartViewportUpdate        : QGraphicsView.ViewportUpdateMode.Class;-- 0x2
   NoViewportUpdate           : QGraphicsView.ViewportUpdateMode.Class;-- 0x3
   BoundingRectViewportUpdate : QGraphicsView.ViewportUpdateMode.Class;-- 0x4
end QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode;
