-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintengine-paintenginefeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPaintEngine.PaintEngineFeature is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function PrimitiveTransform return Class;-- 0x1
   function PatternTransform return Class;-- 0x2
   function PixmapTransform return Class;-- 0x4
   function PatternBrush return Class;-- 0x8
   function LinearGradientFill return Class;-- 0x10
   function RadialGradientFill return Class;-- 0x20
   function ConicalGradientFill return Class;-- 0x40
   function AlphaBlend return Class;-- 0x80
   function PorterDuff return Class;-- 0x100
   function PainterPaths return Class;-- 0x200
   function Antialiasing return Class;-- 0x400
   function BrushStroke return Class;-- 0x800
   function ConstantOpacity return Class;-- 0x1000
   function MaskedBrush return Class;-- 0x2000
   function PerspectiveTransform return Class;-- 0x4000
   function BlendModes return Class;-- 0x8000
   function ObjectBoundingModeGradients return Class;-- 0x10000
   function RasterOpModes return Class;-- 0x20000
   function PaintOutsidePaintEvent return Class;-- 0x20000000
   function AllFeatures return Class;-- 0xffffffff
end QtAda6.QtGui.QPaintEngine.PaintEngineFeature;
