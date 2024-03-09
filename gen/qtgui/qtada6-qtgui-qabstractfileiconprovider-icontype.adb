-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qabstractfileiconprovider-icontype.adb
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
package body QtAda6.QtGui.QAbstractFileIconProvider.IconType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Computer return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Computer"));
   end Computer;
   function Desktop return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Desktop"));
   end Desktop;
   function Trashcan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Trashcan"));
   end Trashcan;
   function Network return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Network"));
   end Network;
   function Drive return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Drive"));
   end Drive;
   function Folder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Folder"));
   end Folder;
   function File return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "File"));
   end File;
end QtAda6.QtGui.QAbstractFileIconProvider.IconType;
