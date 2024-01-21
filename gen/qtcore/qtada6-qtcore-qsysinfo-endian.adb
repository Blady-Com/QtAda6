-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsysinfo-endian.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.QSysInfo.Endian is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function BigEndian return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSysInfo");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Endian");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BigEndian"));
   end BigEndian;
   function ByteOrder return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSysInfo");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Endian");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ByteOrder"));
   end ByteOrder;
   function LittleEndian return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSysInfo");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Endian");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LittleEndian"));
   end LittleEndian;
end QtAda6.QtCore.QSysInfo.Endian;
