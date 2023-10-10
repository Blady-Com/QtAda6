-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixelformat-yuvlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPixelFormat.YUVLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   YUV444   : QPixelFormat.YUVLayout.Class;-- 0x0
   YUV422   : QPixelFormat.YUVLayout.Class;-- 0x1
   YUV411   : QPixelFormat.YUVLayout.Class;-- 0x2
   YUV420P  : QPixelFormat.YUVLayout.Class;-- 0x3
   YUV420SP : QPixelFormat.YUVLayout.Class;-- 0x4
   YV12     : QPixelFormat.YUVLayout.Class;-- 0x5
   UYVY     : QPixelFormat.YUVLayout.Class;-- 0x6
   YUYV     : QPixelFormat.YUVLayout.Class;-- 0x7
   NV12     : QPixelFormat.YUVLayout.Class;-- 0x8
   NV21     : QPixelFormat.YUVLayout.Class;-- 0x9
   IMC1     : QPixelFormat.YUVLayout.Class;-- 0xa
   IMC2     : QPixelFormat.YUVLayout.Class;-- 0xb
   IMC3     : QPixelFormat.YUVLayout.Class;-- 0xc
   IMC4     : QPixelFormat.YUVLayout.Class;-- 0xd
   Y8       : QPixelFormat.YUVLayout.Class;-- 0xe
   Y16      : QPixelFormat.YUVLayout.Class;-- 0xf
end QtAda6.QtGui.QPixelFormat.YUVLayout;
