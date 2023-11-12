-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-stretch.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtGui.QFont.Stretch is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   AnyStretch     : QFont.Stretch.Class;-- 0x0
   UltraCondensed : QFont.Stretch.Class;-- 0x32
   ExtraCondensed : QFont.Stretch.Class;-- 0x3e
   Condensed      : QFont.Stretch.Class;-- 0x4b
   SemiCondensed  : QFont.Stretch.Class;-- 0x57
   Unstretched    : QFont.Stretch.Class;-- 0x64
   SemiExpanded   : QFont.Stretch.Class;-- 0x70
   Expanded       : QFont.Stretch.Class;-- 0x7d
   ExtraExpanded  : QFont.Stretch.Class;-- 0x96
   UltraExpanded  : QFont.Stretch.Class;-- 0xc8
end QtAda6.QtGui.QFont.Stretch;
