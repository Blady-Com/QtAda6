-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpaintengine-paintenginefeature.adb
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
package body QtAda6.QtGui.QPaintEngine.PaintEngineFeature is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PrimitiveTransform return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PrimitiveTransform"));
   end PrimitiveTransform;
   function PatternTransform return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PatternTransform"));
   end PatternTransform;
   function PixmapTransform return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PixmapTransform"));
   end PixmapTransform;
   function PatternBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PatternBrush"));
   end PatternBrush;
   function LinearGradientFill return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LinearGradientFill"));
   end LinearGradientFill;
   function RadialGradientFill return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RadialGradientFill"));
   end RadialGradientFill;
   function ConicalGradientFill return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ConicalGradientFill"));
   end ConicalGradientFill;
   function AlphaBlend return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlphaBlend"));
   end AlphaBlend;
   function PorterDuff return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PorterDuff"));
   end PorterDuff;
   function PainterPaths return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PainterPaths"));
   end PainterPaths;
   function Antialiasing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Antialiasing"));
   end Antialiasing;
   function BrushStroke return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BrushStroke"));
   end BrushStroke;
   function ConstantOpacity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ConstantOpacity"));
   end ConstantOpacity;
   function MaskedBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MaskedBrush"));
   end MaskedBrush;
   function PerspectiveTransform return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PerspectiveTransform"));
   end PerspectiveTransform;
   function BlendModes return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlendModes"));
   end BlendModes;
   function ObjectBoundingModeGradients return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectBoundingModeGradients"));
   end ObjectBoundingModeGradients;
   function RasterOpModes return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RasterOpModes"));
   end RasterOpModes;
   function PaintOutsidePaintEvent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PaintOutsidePaintEvent"));
   end PaintOutsidePaintEvent;
   function AllFeatures return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AllFeatures"));
   end AllFeatures;
end QtAda6.QtGui.QPaintEngine.PaintEngineFeature;
