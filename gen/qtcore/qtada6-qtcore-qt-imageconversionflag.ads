-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-imageconversionflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.ImageConversionFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function AutoColor return Class;-- 0x0
   function AutoDither return Class;-- 0x0
   function DiffuseDither return Class;-- 0x0
   function ThresholdAlphaDither return Class;-- 0x0
   function MonoOnly return Class;-- 0x2
   function ColorMode_Mask return Class;-- 0x3
   function ColorOnly return Class;-- 0x3
   function OrderedAlphaDither return Class;-- 0x4
   function DiffuseAlphaDither return Class;-- 0x8
   function AlphaDither_Mask return Class;-- 0xc
   function NoAlpha return Class;-- 0xc
   function OrderedDither return Class;-- 0x10
   function ThresholdDither return Class;-- 0x20
   function Dither_Mask return Class;-- 0x30
   function PreferDither return Class;-- 0x40
   function AvoidDither return Class;-- 0x80
   function DitherMode_Mask return Class;-- 0xc0
   function NoOpaqueDetection return Class;-- 0x100
   function NoFormatConversion return Class;-- 0x200
end QtAda6.QtCore.Qt.ImageConversionFlag;
