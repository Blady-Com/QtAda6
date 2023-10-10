-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintengine-paintenginefeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QPaintEngine.PaintEngineFeature is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   PrimitiveTransform          : QPaintEngine.PaintEngineFeature.Class;-- 0x1
   PatternTransform            : QPaintEngine.PaintEngineFeature.Class;-- 0x2
   PixmapTransform             : QPaintEngine.PaintEngineFeature.Class;-- 0x4
   PatternBrush                : QPaintEngine.PaintEngineFeature.Class;-- 0x8
   LinearGradientFill          : QPaintEngine.PaintEngineFeature.Class;-- 0x10
   RadialGradientFill          : QPaintEngine.PaintEngineFeature.Class;-- 0x20
   ConicalGradientFill         : QPaintEngine.PaintEngineFeature.Class;-- 0x40
   AlphaBlend                  : QPaintEngine.PaintEngineFeature.Class;-- 0x80
   PorterDuff                  : QPaintEngine.PaintEngineFeature.Class;-- 0x100
   PainterPaths                : QPaintEngine.PaintEngineFeature.Class;-- 0x200
   Antialiasing                : QPaintEngine.PaintEngineFeature.Class;-- 0x400
   BrushStroke                 : QPaintEngine.PaintEngineFeature.Class;-- 0x800
   ConstantOpacity             : QPaintEngine.PaintEngineFeature.Class;-- 0x1000
   MaskedBrush                 : QPaintEngine.PaintEngineFeature.Class;-- 0x2000
   PerspectiveTransform        : QPaintEngine.PaintEngineFeature.Class;-- 0x4000
   BlendModes                  : QPaintEngine.PaintEngineFeature.Class;-- 0x8000
   ObjectBoundingModeGradients : QPaintEngine.PaintEngineFeature.Class;-- 0x10000
   RasterOpModes               : QPaintEngine.PaintEngineFeature.Class;-- 0x20000
   PaintOutsidePaintEvent      : QPaintEngine.PaintEngineFeature.Class;-- 0x20000000
   AllFeatures                 : QPaintEngine.PaintEngineFeature.Class;-- 0xffffffff
end QtAda6.QtGui.QPaintEngine.PaintEngineFeature;
