-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainter-compositionmode.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPainter.CompositionMode is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function CompositionMode_SourceOver return Class;-- 0x0
   function CompositionMode_DestinationOver return Class;-- 0x1
   function CompositionMode_Clear return Class;-- 0x2
   function CompositionMode_Source return Class;-- 0x3
   function CompositionMode_Destination return Class;-- 0x4
   function CompositionMode_SourceIn return Class;-- 0x5
   function CompositionMode_DestinationIn return Class;-- 0x6
   function CompositionMode_SourceOut return Class;-- 0x7
   function CompositionMode_DestinationOut return Class;-- 0x8
   function CompositionMode_SourceAtop return Class;-- 0x9
   function CompositionMode_DestinationAtop return Class;-- 0xa
   function CompositionMode_Xor return Class;-- 0xb
   function CompositionMode_Plus return Class;-- 0xc
   function CompositionMode_Multiply return Class;-- 0xd
   function CompositionMode_Screen return Class;-- 0xe
   function CompositionMode_Overlay return Class;-- 0xf
   function CompositionMode_Darken return Class;-- 0x10
   function CompositionMode_Lighten return Class;-- 0x11
   function CompositionMode_ColorDodge return Class;-- 0x12
   function CompositionMode_ColorBurn return Class;-- 0x13
   function CompositionMode_HardLight return Class;-- 0x14
   function CompositionMode_SoftLight return Class;-- 0x15
   function CompositionMode_Difference return Class;-- 0x16
   function CompositionMode_Exclusion return Class;-- 0x17
   function RasterOp_SourceOrDestination return Class;-- 0x18
   function RasterOp_SourceAndDestination return Class;-- 0x19
   function RasterOp_SourceXorDestination return Class;-- 0x1a
   function RasterOp_NotSourceAndNotDestination return Class;-- 0x1b
   function RasterOp_NotSourceOrNotDestination return Class;-- 0x1c
   function RasterOp_NotSourceXorDestination return Class;-- 0x1d
   function RasterOp_NotSource return Class;-- 0x1e
   function RasterOp_NotSourceAndDestination return Class;-- 0x1f
   function RasterOp_SourceAndNotDestination return Class;-- 0x20
   function RasterOp_NotSourceOrDestination return Class;-- 0x21
   function RasterOp_SourceOrNotDestination return Class;-- 0x22
   function RasterOp_ClearDestination return Class;-- 0x23
   function RasterOp_SetDestination return Class;-- 0x24
   function RasterOp_NotDestination return Class;-- 0x25
end QtAda6.QtGui.QPainter.CompositionMode;
