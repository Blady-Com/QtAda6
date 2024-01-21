-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-mouseeventsource.adb
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
package body QtAda6.QtCore.Qt.MouseEventSource is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function MouseEventNotSynthesized return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseEventSource");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MouseEventNotSynthesized"));
   end MouseEventNotSynthesized;
   function MouseEventSynthesizedBySystem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseEventSource");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MouseEventSynthesizedBySystem"));
   end MouseEventSynthesizedBySystem;
   function MouseEventSynthesizedByQt return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseEventSource");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MouseEventSynthesizedByQt"));
   end MouseEventSynthesizedByQt;
   function MouseEventSynthesizedByApplication return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseEventSource");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MouseEventSynthesizedByApplication"));
   end MouseEventSynthesizedByApplication;
end QtAda6.QtCore.Qt.MouseEventSource;
