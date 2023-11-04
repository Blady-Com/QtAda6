-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcombobox-insertpolicy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QComboBox.InsertPolicy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoInsert             : QComboBox.InsertPolicy.Class;-- 0x0
   InsertAtTop          : QComboBox.InsertPolicy.Class;-- 0x1
   InsertAtCurrent      : QComboBox.InsertPolicy.Class;-- 0x2
   InsertAtBottom       : QComboBox.InsertPolicy.Class;-- 0x3
   InsertAfterCurrent   : QComboBox.InsertPolicy.Class;-- 0x4
   InsertBeforeCurrent  : QComboBox.InsertPolicy.Class;-- 0x5
   InsertAlphabetically : QComboBox.InsertPolicy.Class;-- 0x6
end QtAda6.QtWidgets.QComboBox.InsertPolicy;
