-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qcolorspace-primaries.adb
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
package body QtAda6.QtGui.QColorSpace.Primaries is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Custom return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Primaries");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Custom"));
   end Custom;
   function SRgb return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Primaries");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SRgb"));
   end SRgb;
   function AdobeRgb return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Primaries");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AdobeRgb"));
   end AdobeRgb;
   function DciP3D65 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Primaries");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DciP3D65"));
   end DciP3D65;
   function ProPhotoRgb return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Primaries");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ProPhotoRgb"));
   end ProPhotoRgb;
end QtAda6.QtGui.QColorSpace.Primaries;
