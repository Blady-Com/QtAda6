-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-weight.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtGui.QFont.Weight is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Thin       : QFont.Weight.Class;-- 0x64
   ExtraLight : QFont.Weight.Class;-- 0xc8
   Light      : QFont.Weight.Class;-- 0x12c
   Normal     : QFont.Weight.Class;-- 0x190
   Medium     : QFont.Weight.Class;-- 0x1f4
   DemiBold   : QFont.Weight.Class;-- 0x258
   Bold       : QFont.Weight.Class;-- 0x2bc
   ExtraBold  : QFont.Weight.Class;-- 0x320
   Black      : QFont.Weight.Class;-- 0x384
end QtAda6.QtGui.QFont.Weight;
