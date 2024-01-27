-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qlcdnumber-mode.adb
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
package body QtAda6.QtWidgets.QLCDNumber.Mode is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Hex return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLCDNumber");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Mode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Hex"));
   end Hex;
   function Dec return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLCDNumber");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Mode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Dec"));
   end Dec;
   function Oct return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLCDNumber");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Mode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Oct"));
   end Oct;
   function Bin return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLCDNumber");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Mode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bin"));
   end Bin;
end QtAda6.QtWidgets.QLCDNumber.Mode;
