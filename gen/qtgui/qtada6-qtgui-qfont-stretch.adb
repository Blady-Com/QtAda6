-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfont-stretch.adb
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
package body QtAda6.QtGui.QFont.Stretch is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AnyStretch return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AnyStretch"));
   end AnyStretch;
   function UltraCondensed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UltraCondensed"));
   end UltraCondensed;
   function ExtraCondensed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraCondensed"));
   end ExtraCondensed;
   function Condensed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Condensed"));
   end Condensed;
   function SemiCondensed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SemiCondensed"));
   end SemiCondensed;
   function Unstretched return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Unstretched"));
   end Unstretched;
   function SemiExpanded return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SemiExpanded"));
   end SemiExpanded;
   function Expanded return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Expanded"));
   end Expanded;
   function ExtraExpanded return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraExpanded"));
   end ExtraExpanded;
   function UltraExpanded return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Stretch");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UltraExpanded"));
   end UltraExpanded;
end QtAda6.QtGui.QFont.Stretch;
