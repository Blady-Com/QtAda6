-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qabstractslider-sliderchange.adb
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
package body QtAda6.QtWidgets.QAbstractSlider.SliderChange is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SliderRangeChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderRangeChange"));
   end SliderRangeChange;
   function SliderOrientationChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderOrientationChange"));
   end SliderOrientationChange;
   function SliderStepsChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderStepsChange"));
   end SliderStepsChange;
   function SliderValueChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderValueChange"));
   end SliderValueChange;
end QtAda6.QtWidgets.QAbstractSlider.SliderChange;
