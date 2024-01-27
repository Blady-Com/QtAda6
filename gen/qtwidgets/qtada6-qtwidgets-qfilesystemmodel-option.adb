-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qfilesystemmodel-option.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QFileSystemModel.Option is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DontWatchForChanges return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileSystemModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DontWatchForChanges"));
   end DontWatchForChanges;
   function DontResolveSymlinks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileSystemModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DontResolveSymlinks"));
   end DontResolveSymlinks;
   function DontUseCustomDirectoryIcons return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileSystemModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DontUseCustomDirectoryIcons"));
   end DontUseCustomDirectoryIcons;
end QtAda6.QtWidgets.QFileSystemModel.Option;
