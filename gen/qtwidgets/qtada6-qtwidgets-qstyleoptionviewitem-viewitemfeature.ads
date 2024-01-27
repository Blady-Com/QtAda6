-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoptionviewitem-viewitemfeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyleOptionViewItem.ViewItemFeature is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function None_U return Class;-- 0x0
   function WrapText return Class;-- 0x1
   function Alternate return Class;-- 0x2
   function HasCheckIndicator return Class;-- 0x4
   function HasDisplay return Class;-- 0x8
   function HasDecoration return Class;-- 0x10
end QtAda6.QtWidgets.QStyleOptionViewItem.ViewItemFeature;
