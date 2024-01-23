-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qimageiohandler-imageoption.adb
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
package body QtAda6.QtGui.QImageIOHandler.ImageOption is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Size return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Size"));
   end Size;
   function ClipRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ClipRect"));
   end ClipRect;
   function Description return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Description"));
   end Description;
   function ScaledClipRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ScaledClipRect"));
   end ScaledClipRect;
   function ScaledSize return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ScaledSize"));
   end ScaledSize;
   function CompressionRatio return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompressionRatio"));
   end CompressionRatio;
   function Gamma return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Gamma"));
   end Gamma;
   function Quality return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Quality"));
   end Quality;
   function Name return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Name"));
   end Name;
   function SubType_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SubType"));
   end SubType_K;
   function IncrementalReading return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IncrementalReading"));
   end IncrementalReading;
   function Endianness return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Endianness"));
   end Endianness;
   function Animation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Animation"));
   end Animation;
   function BackgroundColor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BackgroundColor"));
   end BackgroundColor;
   function ImageFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImageFormat"));
   end ImageFormat;
   function SupportedSubTypes return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SupportedSubTypes"));
   end SupportedSubTypes;
   function OptimizedWrite return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OptimizedWrite"));
   end OptimizedWrite;
   function ProgressiveScanWrite return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ProgressiveScanWrite"));
   end ProgressiveScanWrite;
   function ImageTransformation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ImageOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImageTransformation"));
   end ImageTransformation;
end QtAda6.QtGui.QImageIOHandler.ImageOption;
