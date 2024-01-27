-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qabstractslider-slideraction.adb
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
package body QtAda6.QtWidgets.QAbstractSlider.SliderAction is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SliderNoAction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderNoAction"));
   end SliderNoAction;
   function SliderSingleStepAdd return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderSingleStepAdd"));
   end SliderSingleStepAdd;
   function SliderSingleStepSub return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderSingleStepSub"));
   end SliderSingleStepSub;
   function SliderPageStepAdd return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderPageStepAdd"));
   end SliderPageStepAdd;
   function SliderPageStepSub return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderPageStepSub"));
   end SliderPageStepSub;
   function SliderToMinimum return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderToMinimum"));
   end SliderToMinimum;
   function SliderToMaximum return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderToMaximum"));
   end SliderToMaximum;
   function SliderMove return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SliderAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SliderMove"));
   end SliderMove;
end QtAda6.QtWidgets.QAbstractSlider.SliderAction;
