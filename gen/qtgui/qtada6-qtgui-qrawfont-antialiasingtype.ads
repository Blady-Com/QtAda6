-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qrawfont-antialiasingtype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QRawFont.AntialiasingType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function PixelAntialiasing return Class;-- 0x0
   function SubPixelAntialiasing return Class;-- 0x1
end QtAda6.QtGui.QRawFont.AntialiasingType;
