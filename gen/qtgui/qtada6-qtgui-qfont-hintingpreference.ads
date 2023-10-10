-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-hintingpreference.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QFont.HintingPreference is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   PreferDefaultHinting  : QFont.HintingPreference.Class;-- 0x0
   PreferNoHinting       : QFont.HintingPreference.Class;-- 0x1
   PreferVerticalHinting : QFont.HintingPreference.Class;-- 0x2
   PreferFullHinting     : QFont.HintingPreference.Class;-- 0x3
end QtAda6.QtGui.QFont.HintingPreference;
