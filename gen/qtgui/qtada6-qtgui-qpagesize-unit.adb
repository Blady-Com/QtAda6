-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpagesize-unit.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtGui.QPageSize.Unit is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Millimeter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Unit");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Millimeter"));
   end Millimeter;
   function Point return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Unit");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Point"));
   end Point;
   function Inch return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Unit");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Inch"));
   end Inch;
   function Pica return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Unit");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Pica"));
   end Pica;
   function Didot return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Unit");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Didot"));
   end Didot;
   function Cicero return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Unit");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cicero"));
   end Cicero;
end QtAda6.QtGui.QPageSize.Unit;
