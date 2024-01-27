-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qdialogbuttonbox-buttonlayout.adb
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
package body QtAda6.QtWidgets.QDialogButtonBox.ButtonLayout is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function WinLayout return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonLayout");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WinLayout"));
   end WinLayout;
   function MacLayout return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonLayout");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MacLayout"));
   end MacLayout;
   function KdeLayout return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonLayout");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KdeLayout"));
   end KdeLayout;
   function GnomeLayout return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonLayout");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GnomeLayout"));
   end GnomeLayout;
   function AndroidLayout return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonLayout");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AndroidLayout"));
   end AndroidLayout;
end QtAda6.QtWidgets.QDialogButtonBox.ButtonLayout;
