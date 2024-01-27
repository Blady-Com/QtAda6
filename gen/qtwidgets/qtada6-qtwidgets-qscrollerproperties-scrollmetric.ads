-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qscrollerproperties-scrollmetric.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QScrollerProperties.ScrollMetric is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function MousePressEventDelay return Class;-- 0x0
   function DragStartDistance return Class;-- 0x1
   function DragVelocitySmoothingFactor return Class;-- 0x2
   function AxisLockThreshold return Class;-- 0x3
   function ScrollingCurve return Class;-- 0x4
   function DecelerationFactor return Class;-- 0x5
   function MinimumVelocity return Class;-- 0x6
   function MaximumVelocity return Class;-- 0x7
   function MaximumClickThroughVelocity return Class;-- 0x8
   function AcceleratingFlickMaximumTime return Class;-- 0x9
   function AcceleratingFlickSpeedupFactor return Class;-- 0xa
   function SnapPositionRatio return Class;-- 0xb
   function SnapTime return Class;-- 0xc
   function OvershootDragResistanceFactor return Class;-- 0xd
   function OvershootDragDistanceFactor return Class;-- 0xe
   function OvershootScrollDistanceFactor return Class;-- 0xf
   function OvershootScrollTime return Class;-- 0x10
   function HorizontalOvershootPolicy return Class;-- 0x11
   function VerticalOvershootPolicy return Class;-- 0x12
   function FrameRate return Class;-- 0x13
   function ScrollMetricCount return Class;-- 0x14
end QtAda6.QtWidgets.QScrollerProperties.ScrollMetric;
