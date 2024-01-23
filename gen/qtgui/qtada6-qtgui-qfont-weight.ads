-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-weight.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QFont.Weight is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function Thin return Class;-- 0x64
   function ExtraLight return Class;-- 0xc8
   function Light return Class;-- 0x12c
   function Normal return Class;-- 0x190
   function Medium return Class;-- 0x1f4
   function DemiBold return Class;-- 0x258
   function Bold return Class;-- 0x2bc
   function ExtraBold return Class;-- 0x320
   function Black return Class;-- 0x384
end QtAda6.QtGui.QFont.Weight;
