-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimage-format.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QImage.Format is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Format_Invalid                  : QImage.Format.Class;-- 0x0
   Format_Mono                     : QImage.Format.Class;-- 0x1
   Format_MonoLSB                  : QImage.Format.Class;-- 0x2
   Format_Indexed8                 : QImage.Format.Class;-- 0x3
   Format_RGB32                    : QImage.Format.Class;-- 0x4
   Format_ARGB32                   : QImage.Format.Class;-- 0x5
   Format_ARGB32_Premultiplied     : QImage.Format.Class;-- 0x6
   Format_RGB16                    : QImage.Format.Class;-- 0x7
   Format_ARGB8565_Premultiplied   : QImage.Format.Class;-- 0x8
   Format_RGB666                   : QImage.Format.Class;-- 0x9
   Format_ARGB6666_Premultiplied   : QImage.Format.Class;-- 0xa
   Format_RGB555                   : QImage.Format.Class;-- 0xb
   Format_ARGB8555_Premultiplied   : QImage.Format.Class;-- 0xc
   Format_RGB888                   : QImage.Format.Class;-- 0xd
   Format_RGB444                   : QImage.Format.Class;-- 0xe
   Format_ARGB4444_Premultiplied   : QImage.Format.Class;-- 0xf
   Format_RGBX8888                 : QImage.Format.Class;-- 0x10
   Format_RGBA8888                 : QImage.Format.Class;-- 0x11
   Format_RGBA8888_Premultiplied   : QImage.Format.Class;-- 0x12
   Format_BGR30                    : QImage.Format.Class;-- 0x13
   Format_A2BGR30_Premultiplied    : QImage.Format.Class;-- 0x14
   Format_RGB30                    : QImage.Format.Class;-- 0x15
   Format_A2RGB30_Premultiplied    : QImage.Format.Class;-- 0x16
   Format_Alpha8                   : QImage.Format.Class;-- 0x17
   Format_Grayscale8               : QImage.Format.Class;-- 0x18
   Format_RGBX64                   : QImage.Format.Class;-- 0x19
   Format_RGBA64                   : QImage.Format.Class;-- 0x1a
   Format_RGBA64_Premultiplied     : QImage.Format.Class;-- 0x1b
   Format_Grayscale16              : QImage.Format.Class;-- 0x1c
   Format_BGR888                   : QImage.Format.Class;-- 0x1d
   Format_RGBX16FPx4               : QImage.Format.Class;-- 0x1e
   Format_RGBA16FPx4               : QImage.Format.Class;-- 0x1f
   Format_RGBA16FPx4_Premultiplied : QImage.Format.Class;-- 0x20
   Format_RGBX32FPx4               : QImage.Format.Class;-- 0x21
   Format_RGBA32FPx4               : QImage.Format.Class;-- 0x22
   Format_RGBA32FPx4_Premultiplied : QImage.Format.Class;-- 0x23
   NImageFormats                   : QImage.Format.Class;-- 0x24
end QtAda6.QtGui.QImage.Format;
