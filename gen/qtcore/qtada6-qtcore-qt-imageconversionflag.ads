-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-imageconversionflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.ImageConversionFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   AutoColor            : Qt.ImageConversionFlag.Class;-- 0x0
   AutoDither           : Qt.ImageConversionFlag.Class;-- 0x0
   DiffuseDither        : Qt.ImageConversionFlag.Class;-- 0x0
   ThresholdAlphaDither : Qt.ImageConversionFlag.Class;-- 0x0
   MonoOnly             : Qt.ImageConversionFlag.Class;-- 0x2
   ColorMode_Mask       : Qt.ImageConversionFlag.Class;-- 0x3
   ColorOnly            : Qt.ImageConversionFlag.Class;-- 0x3
   OrderedAlphaDither   : Qt.ImageConversionFlag.Class;-- 0x4
   DiffuseAlphaDither   : Qt.ImageConversionFlag.Class;-- 0x8
   AlphaDither_Mask     : Qt.ImageConversionFlag.Class;-- 0xc
   NoAlpha              : Qt.ImageConversionFlag.Class;-- 0xc
   OrderedDither        : Qt.ImageConversionFlag.Class;-- 0x10
   ThresholdDither      : Qt.ImageConversionFlag.Class;-- 0x20
   Dither_Mask          : Qt.ImageConversionFlag.Class;-- 0x30
   PreferDither         : Qt.ImageConversionFlag.Class;-- 0x40
   AvoidDither          : Qt.ImageConversionFlag.Class;-- 0x80
   DitherMode_Mask      : Qt.ImageConversionFlag.Class;-- 0xc0
   NoOpaqueDetection    : Qt.ImageConversionFlag.Class;-- 0x100
   NoFormatConversion   : Qt.ImageConversionFlag.Class;-- 0x200
end QtAda6.QtCore.Qt.ImageConversionFlag;
