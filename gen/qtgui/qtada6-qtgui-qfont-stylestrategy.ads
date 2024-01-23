-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-stylestrategy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QFont.StyleStrategy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function PreferDefault return Class;-- 0x1
   function PreferBitmap return Class;-- 0x2
   function PreferDevice return Class;-- 0x4
   function PreferOutline return Class;-- 0x8
   function ForceOutline return Class;-- 0x10
   function PreferMatch return Class;-- 0x20
   function PreferQuality return Class;-- 0x40
   function PreferAntialias return Class;-- 0x80
   function NoAntialias return Class;-- 0x100
   function NoSubpixelAntialias return Class;-- 0x800
   function PreferNoShaping return Class;-- 0x1000
   function NoFontMerging return Class;-- 0x8000
end QtAda6.QtGui.QFont.StyleStrategy;
