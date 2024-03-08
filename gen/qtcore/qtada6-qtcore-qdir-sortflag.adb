-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdir-sortflag.adb
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
package body QtAda6.QtCore.QDir.SortFlag is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoSort return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoSort"));
   end NoSort;
   function Name return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Name"));
   end Name;
   function Time return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Time"));
   end Time;
   function Size return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Size"));
   end Size;
   function SortByMask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SortByMask"));
   end SortByMask;
   function Unsorted return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Unsorted"));
   end Unsorted;
   function DirsFirst return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirsFirst"));
   end DirsFirst;
   function Reversed return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Reversed"));
   end Reversed;
   function IgnoreCase return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IgnoreCase"));
   end IgnoreCase;
   function DirsLast return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirsLast"));
   end DirsLast;
   function LocaleAware return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LocaleAware"));
   end LocaleAware;
   function Type_K return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Type"));
   end Type_K;
end QtAda6.QtCore.QDir.SortFlag;
