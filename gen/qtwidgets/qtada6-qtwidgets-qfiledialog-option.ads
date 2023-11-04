-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfiledialog-option.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QFileDialog.Option is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   ShowDirsOnly                : QFileDialog.Option.Class;-- 0x1
   DontResolveSymlinks         : QFileDialog.Option.Class;-- 0x2
   DontConfirmOverwrite        : QFileDialog.Option.Class;-- 0x4
   DontUseNativeDialog         : QFileDialog.Option.Class;-- 0x8
   ReadOnly                    : QFileDialog.Option.Class;-- 0x10
   HideNameFilterDetails       : QFileDialog.Option.Class;-- 0x20
   DontUseCustomDirectoryIcons : QFileDialog.Option.Class;-- 0x40
end QtAda6.QtWidgets.QFileDialog.Option;
