-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmetamethod-methodtype.adb
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
package body QtAda6.QtCore.QMetaMethod.MethodType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Method return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaMethod");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Method"));
   end Method;
   function Signal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaMethod");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Signal"));
   end Signal;
   function Slot return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaMethod");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Slot"));
   end Slot;
   function Constructor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaMethod");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Constructor"));
   end Constructor;
end QtAda6.QtCore.QMetaMethod.MethodType;
