-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfiledialog-filemode.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QFileDialog.FileMode is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   AnyFile       : QFileDialog.FileMode.Class;-- 0x0
   ExistingFile  : QFileDialog.FileMode.Class;-- 0x1
   Directory     : QFileDialog.FileMode.Class;-- 0x2
   ExistingFiles : QFileDialog.FileMode.Class;-- 0x3
end QtAda6.QtWidgets.QFileDialog.FileMode;
