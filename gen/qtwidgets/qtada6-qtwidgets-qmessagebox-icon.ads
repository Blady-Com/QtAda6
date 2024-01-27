-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmessagebox-icon.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QMessageBox.Icon is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoIcon return Class;-- 0x0
   function Information return Class;-- 0x1
   function Warning return Class;-- 0x2
   function Critical return Class;-- 0x3
   function Question return Class;-- 0x4
end QtAda6.QtWidgets.QMessageBox.Icon;
