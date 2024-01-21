-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtmsgtype.adb
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
package body QtAda6.QtCore.QtMsgType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function QtDebugMsg return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QtMsgType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QtMsgType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QtDebugMsg"));
   end QtDebugMsg;
   function QtWarningMsg return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QtMsgType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QtMsgType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QtWarningMsg"));
   end QtWarningMsg;
   function QtCriticalMsg return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QtMsgType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QtMsgType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QtCriticalMsg"));
   end QtCriticalMsg;
   function QtSystemMsg return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QtMsgType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QtMsgType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QtSystemMsg"));
   end QtSystemMsg;
   function QtFatalMsg return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QtMsgType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QtMsgType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QtFatalMsg"));
   end QtFatalMsg;
   function QtInfoMsg return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QtMsgType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QtMsgType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QtInfoMsg"));
   end QtInfoMsg;
end QtAda6.QtCore.QtMsgType;
