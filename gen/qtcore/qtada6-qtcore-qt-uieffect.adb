-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-uieffect.adb
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
package body QtAda6.QtCore.Qt.UIEffect is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function UI_General return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "UIEffect");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UI_General"));
   end UI_General;
   function UI_AnimateMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "UIEffect");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UI_AnimateMenu"));
   end UI_AnimateMenu;
   function UI_FadeMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "UIEffect");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UI_FadeMenu"));
   end UI_FadeMenu;
   function UI_AnimateCombo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "UIEffect");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UI_AnimateCombo"));
   end UI_AnimateCombo;
   function UI_AnimateTooltip return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "UIEffect");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UI_AnimateTooltip"));
   end UI_AnimateTooltip;
   function UI_FadeTooltip return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "UIEffect");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UI_FadeTooltip"));
   end UI_FadeTooltip;
   function UI_AnimateToolBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "UIEffect");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UI_AnimateToolBox"));
   end UI_AnimateToolBox;
end QtAda6.QtCore.Qt.UIEffect;
