-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcalendar-system.adb
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
package body QtAda6.QtCore.QCalendar.System is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function User return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Enum_Class   := Object_GetAttrString (Parent_Class, "System");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "User"));
   end User;
   function Gregorian return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Enum_Class   := Object_GetAttrString (Parent_Class, "System");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Gregorian"));
   end Gregorian;
   function Julian return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Enum_Class   := Object_GetAttrString (Parent_Class, "System");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Julian"));
   end Julian;
   function Milankovic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Enum_Class   := Object_GetAttrString (Parent_Class, "System");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Milankovic"));
   end Milankovic;
   function Jalali return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Enum_Class   := Object_GetAttrString (Parent_Class, "System");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Jalali"));
   end Jalali;
   function IslamicCivil return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Enum_Class   := Object_GetAttrString (Parent_Class, "System");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IslamicCivil"));
   end IslamicCivil;
   function Last return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Enum_Class   := Object_GetAttrString (Parent_Class, "System");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Last"));
   end Last;
end QtAda6.QtCore.QCalendar.System;
