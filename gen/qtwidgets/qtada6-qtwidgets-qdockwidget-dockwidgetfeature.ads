-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdockwidget-dockwidgetfeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QDockWidget.DockWidgetFeature is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoDockWidgetFeatures       : QDockWidget.DockWidgetFeature.Class;-- 0x0
   DockWidgetClosable         : QDockWidget.DockWidgetFeature.Class;-- 0x1
   DockWidgetMovable          : QDockWidget.DockWidgetFeature.Class;-- 0x2
   DockWidgetFloatable        : QDockWidget.DockWidgetFeature.Class;-- 0x4
   DockWidgetVerticalTitleBar : QDockWidget.DockWidgetFeature.Class;-- 0x8
   DockWidgetFeatureMask      : QDockWidget.DockWidgetFeature.Class;-- 0xf
   Reserved                   : QDockWidget.DockWidgetFeature.Class;-- 0xff
end QtAda6.QtWidgets.QDockWidget.DockWidgetFeature;
