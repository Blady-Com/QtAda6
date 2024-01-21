-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtimezone-nametype.adb
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
package body QtAda6.QtCore.QTimeZone.NameType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DefaultName return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NameType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DefaultName"));
   end DefaultName;
   function LongName return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NameType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LongName"));
   end LongName;
   function ShortName return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NameType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ShortName"));
   end ShortName;
   function OffsetName return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NameType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OffsetName"));
   end OffsetName;
end QtAda6.QtCore.QTimeZone.NameType;
