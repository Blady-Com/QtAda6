-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfontdatabase-systemfont.adb
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
package body QtAda6.QtGui.QFontDatabase.SystemFont is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function GeneralFont return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SystemFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GeneralFont"));
   end GeneralFont;
   function FixedFont return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SystemFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FixedFont"));
   end FixedFont;
   function TitleFont return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SystemFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TitleFont"));
   end TitleFont;
   function SmallestReadableFont return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SystemFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SmallestReadableFont"));
   end SmallestReadableFont;
end QtAda6.QtGui.QFontDatabase.SystemFont;
