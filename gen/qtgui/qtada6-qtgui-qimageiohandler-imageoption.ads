-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimageiohandler-imageoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QImageIOHandler.ImageOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Size return Class;-- 0x0
   function ClipRect return Class;-- 0x1
   function Description return Class;-- 0x2
   function ScaledClipRect return Class;-- 0x3
   function ScaledSize return Class;-- 0x4
   function CompressionRatio return Class;-- 0x5
   function Gamma return Class;-- 0x6
   function Quality return Class;-- 0x7
   function Name return Class;-- 0x8
   function SubType_K return Class;-- 0x9
   function IncrementalReading return Class;-- 0xa
   function Endianness return Class;-- 0xb
   function Animation return Class;-- 0xc
   function BackgroundColor return Class;-- 0xd
   function ImageFormat return Class;-- 0xe
   function SupportedSubTypes return Class;-- 0xf
   function OptimizedWrite return Class;-- 0x10
   function ProgressiveScanWrite return Class;-- 0x11
   function ImageTransformation return Class;-- 0x12
end QtAda6.QtGui.QImageIOHandler.ImageOption;
