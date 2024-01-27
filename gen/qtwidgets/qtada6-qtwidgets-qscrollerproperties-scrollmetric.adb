-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qscrollerproperties-scrollmetric.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QScrollerProperties.ScrollMetric is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function MousePressEventDelay return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MousePressEventDelay"));
   end MousePressEventDelay;
   function DragStartDistance return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DragStartDistance"));
   end DragStartDistance;
   function DragVelocitySmoothingFactor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DragVelocitySmoothingFactor"));
   end DragVelocitySmoothingFactor;
   function AxisLockThreshold return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AxisLockThreshold"));
   end AxisLockThreshold;
   function ScrollingCurve return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ScrollingCurve"));
   end ScrollingCurve;
   function DecelerationFactor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DecelerationFactor"));
   end DecelerationFactor;
   function MinimumVelocity return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MinimumVelocity"));
   end MinimumVelocity;
   function MaximumVelocity return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MaximumVelocity"));
   end MaximumVelocity;
   function MaximumClickThroughVelocity return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MaximumClickThroughVelocity"));
   end MaximumClickThroughVelocity;
   function AcceleratingFlickMaximumTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AcceleratingFlickMaximumTime"));
   end AcceleratingFlickMaximumTime;
   function AcceleratingFlickSpeedupFactor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AcceleratingFlickSpeedupFactor"));
   end AcceleratingFlickSpeedupFactor;
   function SnapPositionRatio return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SnapPositionRatio"));
   end SnapPositionRatio;
   function SnapTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SnapTime"));
   end SnapTime;
   function OvershootDragResistanceFactor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OvershootDragResistanceFactor"));
   end OvershootDragResistanceFactor;
   function OvershootDragDistanceFactor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OvershootDragDistanceFactor"));
   end OvershootDragDistanceFactor;
   function OvershootScrollDistanceFactor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OvershootScrollDistanceFactor"));
   end OvershootScrollDistanceFactor;
   function OvershootScrollTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OvershootScrollTime"));
   end OvershootScrollTime;
   function HorizontalOvershootPolicy return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HorizontalOvershootPolicy"));
   end HorizontalOvershootPolicy;
   function VerticalOvershootPolicy return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VerticalOvershootPolicy"));
   end VerticalOvershootPolicy;
   function FrameRate return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FrameRate"));
   end FrameRate;
   function ScrollMetricCount return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ScrollMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ScrollMetricCount"));
   end ScrollMetricCount;
end QtAda6.QtWidgets.QScrollerProperties.ScrollMetric;
