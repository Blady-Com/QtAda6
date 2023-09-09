-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-brushstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.BrushStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoBrush                : Qt.BrushStyle.Class;-- 0x0
   SolidPattern           : Qt.BrushStyle.Class;-- 0x1
   Dense1Pattern          : Qt.BrushStyle.Class;-- 0x2
   Dense2Pattern          : Qt.BrushStyle.Class;-- 0x3
   Dense3Pattern          : Qt.BrushStyle.Class;-- 0x4
   Dense4Pattern          : Qt.BrushStyle.Class;-- 0x5
   Dense5Pattern          : Qt.BrushStyle.Class;-- 0x6
   Dense6Pattern          : Qt.BrushStyle.Class;-- 0x7
   Dense7Pattern          : Qt.BrushStyle.Class;-- 0x8
   HorPattern             : Qt.BrushStyle.Class;-- 0x9
   VerPattern             : Qt.BrushStyle.Class;-- 0xa
   CrossPattern           : Qt.BrushStyle.Class;-- 0xb
   BDiagPattern           : Qt.BrushStyle.Class;-- 0xc
   FDiagPattern           : Qt.BrushStyle.Class;-- 0xd
   DiagCrossPattern       : Qt.BrushStyle.Class;-- 0xe
   LinearGradientPattern  : Qt.BrushStyle.Class;-- 0xf
   RadialGradientPattern  : Qt.BrushStyle.Class;-- 0x10
   ConicalGradientPattern : Qt.BrushStyle.Class;-- 0x11
   TexturePattern         : Qt.BrushStyle.Class;-- 0x18
end QtAda6.QtCore.Qt.BrushStyle;
