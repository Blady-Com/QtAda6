-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextblockformat-lineheighttypes.adb
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
package body QtAda6.QtGui.QTextBlockFormat.LineHeightTypes is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SingleHeight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LineHeightTypes");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SingleHeight"));
   end SingleHeight;
   function ProportionalHeight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LineHeightTypes");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ProportionalHeight"));
   end ProportionalHeight;
   function FixedHeight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LineHeightTypes");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FixedHeight"));
   end FixedHeight;
   function MinimumHeight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LineHeightTypes");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MinimumHeight"));
   end MinimumHeight;
   function LineDistanceHeight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LineHeightTypes");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LineDistanceHeight"));
   end LineDistanceHeight;
end QtAda6.QtGui.QTextBlockFormat.LineHeightTypes;
