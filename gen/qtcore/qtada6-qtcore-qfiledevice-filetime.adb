-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfiledevice-filetime.adb
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
package body QtAda6.QtCore.QFileDevice.FileTime is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function FileAccessTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FileTime");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FileAccessTime"));
   end FileAccessTime;
   function FileBirthTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FileTime");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FileBirthTime"));
   end FileBirthTime;
   function FileMetadataChangeTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FileTime");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FileMetadataChangeTime"));
   end FileMetadataChangeTime;
   function FileModificationTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FileTime");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FileModificationTime"));
   end FileModificationTime;
end QtAda6.QtCore.QFileDevice.FileTime;
