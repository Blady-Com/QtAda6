-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixelformat-yuvlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPixelFormat.YUVLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function YUV444 return Class;-- 0x0
   function YUV422 return Class;-- 0x1
   function YUV411 return Class;-- 0x2
   function YUV420P return Class;-- 0x3
   function YUV420SP return Class;-- 0x4
   function YV12 return Class;-- 0x5
   function UYVY return Class;-- 0x6
   function YUYV return Class;-- 0x7
   function NV12 return Class;-- 0x8
   function NV21 return Class;-- 0x9
   function IMC1 return Class;-- 0xa
   function IMC2 return Class;-- 0xb
   function IMC3 return Class;-- 0xc
   function IMC4 return Class;-- 0xd
   function Y8 return Class;-- 0xe
   function Y16 return Class;-- 0xf
end QtAda6.QtGui.QPixelFormat.YUVLayout;
