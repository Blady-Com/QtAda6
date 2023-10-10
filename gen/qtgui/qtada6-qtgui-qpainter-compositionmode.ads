-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainter-compositionmode.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPainter.CompositionMode is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   CompositionMode_SourceOver          : QPainter.CompositionMode.Class;-- 0x0
   CompositionMode_DestinationOver     : QPainter.CompositionMode.Class;-- 0x1
   CompositionMode_Clear               : QPainter.CompositionMode.Class;-- 0x2
   CompositionMode_Source              : QPainter.CompositionMode.Class;-- 0x3
   CompositionMode_Destination         : QPainter.CompositionMode.Class;-- 0x4
   CompositionMode_SourceIn            : QPainter.CompositionMode.Class;-- 0x5
   CompositionMode_DestinationIn       : QPainter.CompositionMode.Class;-- 0x6
   CompositionMode_SourceOut           : QPainter.CompositionMode.Class;-- 0x7
   CompositionMode_DestinationOut      : QPainter.CompositionMode.Class;-- 0x8
   CompositionMode_SourceAtop          : QPainter.CompositionMode.Class;-- 0x9
   CompositionMode_DestinationAtop     : QPainter.CompositionMode.Class;-- 0xa
   CompositionMode_Xor                 : QPainter.CompositionMode.Class;-- 0xb
   CompositionMode_Plus                : QPainter.CompositionMode.Class;-- 0xc
   CompositionMode_Multiply            : QPainter.CompositionMode.Class;-- 0xd
   CompositionMode_Screen              : QPainter.CompositionMode.Class;-- 0xe
   CompositionMode_Overlay             : QPainter.CompositionMode.Class;-- 0xf
   CompositionMode_Darken              : QPainter.CompositionMode.Class;-- 0x10
   CompositionMode_Lighten             : QPainter.CompositionMode.Class;-- 0x11
   CompositionMode_ColorDodge          : QPainter.CompositionMode.Class;-- 0x12
   CompositionMode_ColorBurn           : QPainter.CompositionMode.Class;-- 0x13
   CompositionMode_HardLight           : QPainter.CompositionMode.Class;-- 0x14
   CompositionMode_SoftLight           : QPainter.CompositionMode.Class;-- 0x15
   CompositionMode_Difference          : QPainter.CompositionMode.Class;-- 0x16
   CompositionMode_Exclusion           : QPainter.CompositionMode.Class;-- 0x17
   RasterOp_SourceOrDestination        : QPainter.CompositionMode.Class;-- 0x18
   RasterOp_SourceAndDestination       : QPainter.CompositionMode.Class;-- 0x19
   RasterOp_SourceXorDestination       : QPainter.CompositionMode.Class;-- 0x1a
   RasterOp_NotSourceAndNotDestination : QPainter.CompositionMode.Class;-- 0x1b
   RasterOp_NotSourceOrNotDestination  : QPainter.CompositionMode.Class;-- 0x1c
   RasterOp_NotSourceXorDestination    : QPainter.CompositionMode.Class;-- 0x1d
   RasterOp_NotSource                  : QPainter.CompositionMode.Class;-- 0x1e
   RasterOp_NotSourceAndDestination    : QPainter.CompositionMode.Class;-- 0x1f
   RasterOp_SourceAndNotDestination    : QPainter.CompositionMode.Class;-- 0x20
   RasterOp_NotSourceOrDestination     : QPainter.CompositionMode.Class;-- 0x21
   RasterOp_SourceOrNotDestination     : QPainter.CompositionMode.Class;-- 0x22
   RasterOp_ClearDestination           : QPainter.CompositionMode.Class;-- 0x23
   RasterOp_SetDestination             : QPainter.CompositionMode.Class;-- 0x24
   RasterOp_NotDestination             : QPainter.CompositionMode.Class;-- 0x25
end QtAda6.QtGui.QPainter.CompositionMode;
