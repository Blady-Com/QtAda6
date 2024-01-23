-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimage-format.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QImage.Format is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Format_Invalid return Class;-- 0x0
   function Format_Mono return Class;-- 0x1
   function Format_MonoLSB return Class;-- 0x2
   function Format_Indexed8 return Class;-- 0x3
   function Format_RGB32 return Class;-- 0x4
   function Format_ARGB32 return Class;-- 0x5
   function Format_ARGB32_Premultiplied return Class;-- 0x6
   function Format_RGB16 return Class;-- 0x7
   function Format_ARGB8565_Premultiplied return Class;-- 0x8
   function Format_RGB666 return Class;-- 0x9
   function Format_ARGB6666_Premultiplied return Class;-- 0xa
   function Format_RGB555 return Class;-- 0xb
   function Format_ARGB8555_Premultiplied return Class;-- 0xc
   function Format_RGB888 return Class;-- 0xd
   function Format_RGB444 return Class;-- 0xe
   function Format_ARGB4444_Premultiplied return Class;-- 0xf
   function Format_RGBX8888 return Class;-- 0x10
   function Format_RGBA8888 return Class;-- 0x11
   function Format_RGBA8888_Premultiplied return Class;-- 0x12
   function Format_BGR30 return Class;-- 0x13
   function Format_A2BGR30_Premultiplied return Class;-- 0x14
   function Format_RGB30 return Class;-- 0x15
   function Format_A2RGB30_Premultiplied return Class;-- 0x16
   function Format_Alpha8 return Class;-- 0x17
   function Format_Grayscale8 return Class;-- 0x18
   function Format_RGBX64 return Class;-- 0x19
   function Format_RGBA64 return Class;-- 0x1a
   function Format_RGBA64_Premultiplied return Class;-- 0x1b
   function Format_Grayscale16 return Class;-- 0x1c
   function Format_BGR888 return Class;-- 0x1d
   function Format_RGBX16FPx4 return Class;-- 0x1e
   function Format_RGBA16FPx4 return Class;-- 0x1f
   function Format_RGBA16FPx4_Premultiplied return Class;-- 0x20
   function Format_RGBX32FPx4 return Class;-- 0x21
   function Format_RGBA32FPx4 return Class;-- 0x22
   function Format_RGBA32FPx4_Premultiplied return Class;-- 0x23
   function NImageFormats return Class;-- 0x24
end QtAda6.QtGui.QImage.Format;
