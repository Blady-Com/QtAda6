-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdir-filter.adb
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
package body QtAda6.QtCore.QDir.Filter is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoFilter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoFilter"));
   end NoFilter;
   function Dirs return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Dirs"));
   end Dirs;
   function Files return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Files"));
   end Files;
   function Drives return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Drives"));
   end Drives;
   function AllEntries return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllEntries"));
   end AllEntries;
   function NoSymLinks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoSymLinks"));
   end NoSymLinks;
   function TypeMask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TypeMask"));
   end TypeMask;
   function Readable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Readable"));
   end Readable;
   function Writable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Writable"));
   end Writable;
   function Executable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Executable"));
   end Executable;
   function PermissionMask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PermissionMask"));
   end PermissionMask;
   function Modified return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Modified"));
   end Modified;
   function Hidden return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Hidden"));
   end Hidden;
   function System return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "System"));
   end System;
   function AccessMask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AccessMask"));
   end AccessMask;
   function AllDirs return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllDirs"));
   end AllDirs;
   function CaseSensitive return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CaseSensitive"));
   end CaseSensitive;
   function NoDot return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoDot"));
   end NoDot;
   function NoDotDot return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoDotDot"));
   end NoDotDot;
   function NoDotAndDotDot return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Filter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoDotAndDotDot"));
   end NoDotAndDotDot;
end QtAda6.QtCore.QDir.Filter;
