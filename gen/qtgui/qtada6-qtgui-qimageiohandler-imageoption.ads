-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimageiohandler-imageoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QImageIOHandler.ImageOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Size                 : QImageIOHandler.ImageOption.Class;-- 0x0
   ClipRect             : QImageIOHandler.ImageOption.Class;-- 0x1
   Description          : QImageIOHandler.ImageOption.Class;-- 0x2
   ScaledClipRect       : QImageIOHandler.ImageOption.Class;-- 0x3
   ScaledSize           : QImageIOHandler.ImageOption.Class;-- 0x4
   CompressionRatio     : QImageIOHandler.ImageOption.Class;-- 0x5
   Gamma                : QImageIOHandler.ImageOption.Class;-- 0x6
   Quality              : QImageIOHandler.ImageOption.Class;-- 0x7
   Name                 : QImageIOHandler.ImageOption.Class;-- 0x8
   SubType_K            : QImageIOHandler.ImageOption.Class;-- 0x9
   IncrementalReading   : QImageIOHandler.ImageOption.Class;-- 0xa
   Endianness           : QImageIOHandler.ImageOption.Class;-- 0xb
   Animation            : QImageIOHandler.ImageOption.Class;-- 0xc
   BackgroundColor      : QImageIOHandler.ImageOption.Class;-- 0xd
   ImageFormat          : QImageIOHandler.ImageOption.Class;-- 0xe
   SupportedSubTypes    : QImageIOHandler.ImageOption.Class;-- 0xf
   OptimizedWrite       : QImageIOHandler.ImageOption.Class;-- 0x10
   ProgressiveScanWrite : QImageIOHandler.ImageOption.Class;-- 0x11
   ImageTransformation  : QImageIOHandler.ImageOption.Class;-- 0x12
end QtAda6.QtGui.QImageIOHandler.ImageOption;
