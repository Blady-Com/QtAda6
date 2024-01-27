-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qfiledialog-option.adb
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
package body QtAda6.QtWidgets.QFileDialog.Option is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ShowDirsOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ShowDirsOnly"));
   end ShowDirsOnly;
   function DontResolveSymlinks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DontResolveSymlinks"));
   end DontResolveSymlinks;
   function DontConfirmOverwrite return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DontConfirmOverwrite"));
   end DontConfirmOverwrite;
   function DontUseNativeDialog return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DontUseNativeDialog"));
   end DontUseNativeDialog;
   function ReadOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ReadOnly"));
   end ReadOnly;
   function HideNameFilterDetails return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HideNameFilterDetails"));
   end HideNameFilterDetails;
   function DontUseCustomDirectoryIcons return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DontUseCustomDirectoryIcons"));
   end DontUseCustomDirectoryIcons;
end QtAda6.QtWidgets.QFileDialog.Option;
