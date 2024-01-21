-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-uieffect.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.UIEffect is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function UI_General return Class;-- 0x0
   function UI_AnimateMenu return Class;-- 0x1
   function UI_FadeMenu return Class;-- 0x2
   function UI_AnimateCombo return Class;-- 0x3
   function UI_AnimateTooltip return Class;-- 0x4
   function UI_FadeTooltip return Class;-- 0x5
   function UI_AnimateToolBox return Class;-- 0x6
end QtAda6.QtCore.Qt.UIEffect;
