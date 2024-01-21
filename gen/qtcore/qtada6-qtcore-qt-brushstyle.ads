-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-brushstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.BrushStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoBrush return Class;-- 0x0
   function SolidPattern return Class;-- 0x1
   function Dense1Pattern return Class;-- 0x2
   function Dense2Pattern return Class;-- 0x3
   function Dense3Pattern return Class;-- 0x4
   function Dense4Pattern return Class;-- 0x5
   function Dense5Pattern return Class;-- 0x6
   function Dense6Pattern return Class;-- 0x7
   function Dense7Pattern return Class;-- 0x8
   function HorPattern return Class;-- 0x9
   function VerPattern return Class;-- 0xa
   function CrossPattern return Class;-- 0xb
   function BDiagPattern return Class;-- 0xc
   function FDiagPattern return Class;-- 0xd
   function DiagCrossPattern return Class;-- 0xe
   function LinearGradientPattern return Class;-- 0xf
   function RadialGradientPattern return Class;-- 0x10
   function ConicalGradientPattern return Class;-- 0x11
   function TexturePattern return Class;-- 0x18
end QtAda6.QtCore.Qt.BrushStyle;
