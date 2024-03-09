-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-requestsoftwareinputpanel.adb
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
package body QtAda6.QtWidgets.QStyle.RequestSoftwareInputPanel is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function RSIP_OnMouseClickAndAlreadyFocused return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RSIP_OnMouseClickAndAlreadyFocused"));
   end RSIP_OnMouseClickAndAlreadyFocused;
   function RSIP_OnMouseClick return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RSIP_OnMouseClick"));
   end RSIP_OnMouseClick;
end QtAda6.QtWidgets.QStyle.RequestSoftwareInputPanel;
