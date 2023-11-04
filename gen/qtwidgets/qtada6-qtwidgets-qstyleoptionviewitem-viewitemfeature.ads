-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoptionviewitem-viewitemfeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QStyleOptionViewItem.ViewItemFeature is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   None_U            : QStyleOptionViewItem.ViewItemFeature.Class;-- 0x0
   WrapText          : QStyleOptionViewItem.ViewItemFeature.Class;-- 0x1
   Alternate         : QStyleOptionViewItem.ViewItemFeature.Class;-- 0x2
   HasCheckIndicator : QStyleOptionViewItem.ViewItemFeature.Class;-- 0x4
   HasDisplay        : QStyleOptionViewItem.ViewItemFeature.Class;-- 0x8
   HasDecoration     : QStyleOptionViewItem.ViewItemFeature.Class;-- 0x10
end QtAda6.QtWidgets.QStyleOptionViewItem.ViewItemFeature;
