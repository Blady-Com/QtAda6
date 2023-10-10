-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixelformat-colormodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPixelFormat.ColorModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   RGB       : QPixelFormat.ColorModel.Class;-- 0x0
   BGR       : QPixelFormat.ColorModel.Class;-- 0x1
   Indexed   : QPixelFormat.ColorModel.Class;-- 0x2
   Grayscale : QPixelFormat.ColorModel.Class;-- 0x3
   CMYK      : QPixelFormat.ColorModel.Class;-- 0x4
   HSL       : QPixelFormat.ColorModel.Class;-- 0x5
   HSV       : QPixelFormat.ColorModel.Class;-- 0x6
   YUV       : QPixelFormat.ColorModel.Class;-- 0x7
   Alpha     : QPixelFormat.ColorModel.Class;-- 0x8
end QtAda6.QtGui.QPixelFormat.ColorModel;
