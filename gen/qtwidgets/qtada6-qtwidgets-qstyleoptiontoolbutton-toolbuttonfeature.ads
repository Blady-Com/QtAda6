-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoptiontoolbutton-toolbuttonfeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QStyleOptionToolButton.ToolButtonFeature is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   None_U          : QStyleOptionToolButton.ToolButtonFeature.Class;-- 0x0
   Arrow           : QStyleOptionToolButton.ToolButtonFeature.Class;-- 0x1
   Menu            : QStyleOptionToolButton.ToolButtonFeature.Class;-- 0x4
   MenuButtonPopup : QStyleOptionToolButton.ToolButtonFeature.Class;-- 0x4
   PopupDelay      : QStyleOptionToolButton.ToolButtonFeature.Class;-- 0x8
   HasMenu         : QStyleOptionToolButton.ToolButtonFeature.Class;-- 0x10
end QtAda6.QtWidgets.QStyleOptionToolButton.ToolButtonFeature;
