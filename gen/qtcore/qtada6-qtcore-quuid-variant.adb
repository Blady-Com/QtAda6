-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-quuid-variant.adb
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
package body QtAda6.QtCore.QUuid.Variant is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function VarUnknown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Variant");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VarUnknown"));
   end VarUnknown;
   function NCS return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Variant");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NCS"));
   end NCS;
   function DCE return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Variant");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DCE"));
   end DCE;
   function Microsoft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Variant");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Microsoft"));
   end Microsoft;
   function Reserved return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Variant");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Reserved"));
   end Reserved;
end QtAda6.QtCore.QUuid.Variant;
