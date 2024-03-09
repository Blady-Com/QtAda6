-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qsystemtrayicon-messageicon.adb
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
package body QtAda6.QtWidgets.QSystemTrayIcon.MessageIcon is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoIcon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSystemTrayIcon");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoIcon"));
   end NoIcon;
   function Information return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSystemTrayIcon");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Information"));
   end Information;
   function Warning return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSystemTrayIcon");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Warning"));
   end Warning;
   function Critical return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSystemTrayIcon");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Critical"));
   end Critical;
end QtAda6.QtWidgets.QSystemTrayIcon.MessageIcon;
