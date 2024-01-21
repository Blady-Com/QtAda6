-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-dayofweek.adb
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
package body QtAda6.QtCore.Qt.DayOfWeek is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Monday return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DayOfWeek");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Monday"));
   end Monday;
   function Tuesday return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DayOfWeek");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Tuesday"));
   end Tuesday;
   function Wednesday return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DayOfWeek");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Wednesday"));
   end Wednesday;
   function Thursday return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DayOfWeek");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Thursday"));
   end Thursday;
   function Friday return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DayOfWeek");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Friday"));
   end Friday;
   function Saturday return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DayOfWeek");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Saturday"));
   end Saturday;
   function Sunday return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DayOfWeek");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Sunday"));
   end Sunday;
end QtAda6.QtCore.Qt.DayOfWeek;
