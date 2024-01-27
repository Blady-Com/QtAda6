-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qcombobox-insertpolicy.adb
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
package body QtAda6.QtWidgets.QComboBox.InsertPolicy is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoInsert return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InsertPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoInsert"));
   end NoInsert;
   function InsertAtTop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InsertPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InsertAtTop"));
   end InsertAtTop;
   function InsertAtCurrent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InsertPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InsertAtCurrent"));
   end InsertAtCurrent;
   function InsertAtBottom return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InsertPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InsertAtBottom"));
   end InsertAtBottom;
   function InsertAfterCurrent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InsertPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InsertAfterCurrent"));
   end InsertAfterCurrent;
   function InsertBeforeCurrent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InsertPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InsertBeforeCurrent"));
   end InsertBeforeCurrent;
   function InsertAlphabetically return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InsertPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InsertAlphabetically"));
   end InsertAlphabetically;
end QtAda6.QtWidgets.QComboBox.InsertPolicy;
