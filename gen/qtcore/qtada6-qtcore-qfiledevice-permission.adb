-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfiledevice-permission.adb
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
package body QtAda6.QtCore.QFileDevice.Permission is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ExeOther return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExeOther"));
   end ExeOther;
   function WriteOther return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WriteOther"));
   end WriteOther;
   function ReadOther return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ReadOther"));
   end ReadOther;
   function ExeGroup return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExeGroup"));
   end ExeGroup;
   function WriteGroup return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WriteGroup"));
   end WriteGroup;
   function ReadGroup return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ReadGroup"));
   end ReadGroup;
   function ExeUser return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExeUser"));
   end ExeUser;
   function WriteUser return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WriteUser"));
   end WriteUser;
   function ReadUser return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ReadUser"));
   end ReadUser;
   function ExeOwner return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExeOwner"));
   end ExeOwner;
   function WriteOwner return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WriteOwner"));
   end WriteOwner;
   function ReadOwner return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ReadOwner"));
   end ReadOwner;
end QtAda6.QtCore.QFileDevice.Permission;
