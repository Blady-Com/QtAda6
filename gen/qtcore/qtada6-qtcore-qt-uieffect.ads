-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-uieffect.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.UIEffect is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   UI_General        : Qt.UIEffect.Class;-- 0x0
   UI_AnimateMenu    : Qt.UIEffect.Class;-- 0x1
   UI_FadeMenu       : Qt.UIEffect.Class;-- 0x2
   UI_AnimateCombo   : Qt.UIEffect.Class;-- 0x3
   UI_AnimateTooltip : Qt.UIEffect.Class;-- 0x4
   UI_FadeTooltip    : Qt.UIEffect.Class;-- 0x5
   UI_AnimateToolBox : Qt.UIEffect.Class;-- 0x6
end QtAda6.QtCore.Qt.UIEffect;
