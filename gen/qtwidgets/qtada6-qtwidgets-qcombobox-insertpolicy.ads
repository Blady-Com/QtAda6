-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcombobox-insertpolicy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QComboBox.InsertPolicy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoInsert return Class;-- 0x0
   function InsertAtTop return Class;-- 0x1
   function InsertAtCurrent return Class;-- 0x2
   function InsertAtBottom return Class;-- 0x3
   function InsertAfterCurrent return Class;-- 0x4
   function InsertBeforeCurrent return Class;-- 0x5
   function InsertAlphabetically return Class;-- 0x6
end QtAda6.QtWidgets.QComboBox.InsertPolicy;
