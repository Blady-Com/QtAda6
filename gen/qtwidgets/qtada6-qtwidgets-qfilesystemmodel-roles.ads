-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfilesystemmodel-roles.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QFileSystemModel.Roles is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   FileIconRole    : QFileSystemModel.Roles.Class;-- 0x1
   FilePathRole    : QFileSystemModel.Roles.Class;-- 0x101
   FileNameRole    : QFileSystemModel.Roles.Class;-- 0x102
   FilePermissions : QFileSystemModel.Roles.Class;-- 0x103
end QtAda6.QtWidgets.QFileSystemModel.Roles;
