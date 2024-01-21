-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-imageconversionflag.adb
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
package body QtAda6.QtCore.Qt.ImageConversionFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AutoColor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AutoColor"));
   end AutoColor;
   function AutoDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AutoDither"));
   end AutoDither;
   function DiffuseDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DiffuseDither"));
   end DiffuseDither;
   function ThresholdAlphaDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ThresholdAlphaDither"));
   end ThresholdAlphaDither;
   function MonoOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MonoOnly"));
   end MonoOnly;
   function ColorMode_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ColorMode_Mask"));
   end ColorMode_Mask;
   function ColorOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ColorOnly"));
   end ColorOnly;
   function OrderedAlphaDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OrderedAlphaDither"));
   end OrderedAlphaDither;
   function DiffuseAlphaDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DiffuseAlphaDither"));
   end DiffuseAlphaDither;
   function AlphaDither_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlphaDither_Mask"));
   end AlphaDither_Mask;
   function NoAlpha return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoAlpha"));
   end NoAlpha;
   function OrderedDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OrderedDither"));
   end OrderedDither;
   function ThresholdDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ThresholdDither"));
   end ThresholdDither;
   function Dither_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Dither_Mask"));
   end Dither_Mask;
   function PreferDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferDither"));
   end PreferDither;
   function AvoidDither return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AvoidDither"));
   end AvoidDither;
   function DitherMode_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DitherMode_Mask"));
   end DitherMode_Mask;
   function NoOpaqueDetection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoOpaqueDetection"));
   end NoOpaqueDetection;
   function NoFormatConversion return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageConversionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoFormatConversion"));
   end NoFormatConversion;
end QtAda6.QtCore.Qt.ImageConversionFlag;
