-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixelformat-colormodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPixelFormat.ColorModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function RGB return Class;-- 0x0
   function BGR return Class;-- 0x1
   function Indexed return Class;-- 0x2
   function Grayscale return Class;-- 0x3
   function CMYK return Class;-- 0x4
   function HSL return Class;-- 0x5
   function HSV return Class;-- 0x6
   function YUV return Class;-- 0x7
   function Alpha return Class;-- 0x8
end QtAda6.QtGui.QPixelFormat.ColorModel;
