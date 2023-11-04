-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qscrollerproperties-scrollmetric.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QScrollerProperties.ScrollMetric is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   MousePressEventDelay           : QScrollerProperties.ScrollMetric.Class;-- 0x0
   DragStartDistance              : QScrollerProperties.ScrollMetric.Class;-- 0x1
   DragVelocitySmoothingFactor    : QScrollerProperties.ScrollMetric.Class;-- 0x2
   AxisLockThreshold              : QScrollerProperties.ScrollMetric.Class;-- 0x3
   ScrollingCurve                 : QScrollerProperties.ScrollMetric.Class;-- 0x4
   DecelerationFactor             : QScrollerProperties.ScrollMetric.Class;-- 0x5
   MinimumVelocity                : QScrollerProperties.ScrollMetric.Class;-- 0x6
   MaximumVelocity                : QScrollerProperties.ScrollMetric.Class;-- 0x7
   MaximumClickThroughVelocity    : QScrollerProperties.ScrollMetric.Class;-- 0x8
   AcceleratingFlickMaximumTime   : QScrollerProperties.ScrollMetric.Class;-- 0x9
   AcceleratingFlickSpeedupFactor : QScrollerProperties.ScrollMetric.Class;-- 0xa
   SnapPositionRatio              : QScrollerProperties.ScrollMetric.Class;-- 0xb
   SnapTime                       : QScrollerProperties.ScrollMetric.Class;-- 0xc
   OvershootDragResistanceFactor  : QScrollerProperties.ScrollMetric.Class;-- 0xd
   OvershootDragDistanceFactor    : QScrollerProperties.ScrollMetric.Class;-- 0xe
   OvershootScrollDistanceFactor  : QScrollerProperties.ScrollMetric.Class;-- 0xf
   OvershootScrollTime            : QScrollerProperties.ScrollMetric.Class;-- 0x10
   HorizontalOvershootPolicy      : QScrollerProperties.ScrollMetric.Class;-- 0x11
   VerticalOvershootPolicy        : QScrollerProperties.ScrollMetric.Class;-- 0x12
   FrameRate                      : QScrollerProperties.ScrollMetric.Class;-- 0x13
   ScrollMetricCount              : QScrollerProperties.ScrollMetric.Class;-- 0x14
end QtAda6.QtWidgets.QScrollerProperties.ScrollMetric;
