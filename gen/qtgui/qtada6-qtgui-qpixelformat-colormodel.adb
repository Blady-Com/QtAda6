-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpixelformat-colormodel.adb
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
package body QtAda6.QtGui.QPixelFormat.ColorModel is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function RGB return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RGB"));
   end RGB;
   function BGR return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BGR"));
   end BGR;
   function Indexed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Indexed"));
   end Indexed;
   function Grayscale return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Grayscale"));
   end Grayscale;
   function CMYK return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CMYK"));
   end CMYK;
   function HSL return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HSL"));
   end HSL;
   function HSV return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HSV"));
   end HSV;
   function YUV return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "YUV"));
   end YUV;
   function Alpha return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ColorModel");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Alpha"));
   end Alpha;
end QtAda6.QtGui.QPixelFormat.ColorModel;
