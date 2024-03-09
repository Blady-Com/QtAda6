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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SliderNoAction return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SliderNoAction"));
   end SliderNoAction;
   function SliderSingleStepAdd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SliderSingleStepAdd"));
   end SliderSingleStepAdd;
   function SliderSingleStepSub return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SliderSingleStepSub"));
   end SliderSingleStepSub;
   function SliderPageStepAdd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SliderPageStepAdd"));
   end SliderPageStepAdd;
   function SliderPageStepSub return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SliderPageStepSub"));
   end SliderPageStepSub;
   function SliderToMinimum return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SliderToMinimum"));
   end SliderToMinimum;
   function SliderToMaximum return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SliderToMaximum"));
   end SliderToMaximum;
   function SliderMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SliderMove"));
   end SliderMove;
end QtAda6.QtWidgets.QAbstractSlider.SliderAction;
