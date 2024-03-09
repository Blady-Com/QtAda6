-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qscrollerproperties-framerates.adb
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
package body QtAda6.QtWidgets.QScrollerProperties.FrameRates is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Standard return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Standard"));
   end Standard;
   function Fps60 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Fps60"));
   end Fps60;
   function Fps30 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Fps30"));
   end Fps30;
   function Fps20 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Fps20"));
   end Fps20;
end QtAda6.QtWidgets.QScrollerProperties.FrameRates;
