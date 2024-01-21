-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsettings-format.adb
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
package body QtAda6.QtCore.QSettings.Format is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NativeFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NativeFormat"));
   end NativeFormat;
   function IniFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IniFormat"));
   end IniFormat;
   function InvalidFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InvalidFormat"));
   end InvalidFormat;
   function CustomFormat1 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat1"));
   end CustomFormat1;
   function CustomFormat2 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat2"));
   end CustomFormat2;
   function CustomFormat3 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat3"));
   end CustomFormat3;
   function CustomFormat4 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat4"));
   end CustomFormat4;
   function CustomFormat5 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat5"));
   end CustomFormat5;
   function CustomFormat6 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat6"));
   end CustomFormat6;
   function CustomFormat7 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat7"));
   end CustomFormat7;
   function CustomFormat8 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat8"));
   end CustomFormat8;
   function CustomFormat9 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat9"));
   end CustomFormat9;
   function CustomFormat10 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat10"));
   end CustomFormat10;
   function CustomFormat11 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat11"));
   end CustomFormat11;
   function CustomFormat12 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat12"));
   end CustomFormat12;
   function CustomFormat13 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat13"));
   end CustomFormat13;
   function CustomFormat14 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat14"));
   end CustomFormat14;
   function CustomFormat15 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat15"));
   end CustomFormat15;
   function CustomFormat16 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomFormat16"));
   end CustomFormat16;
end QtAda6.QtCore.QSettings.Format;
