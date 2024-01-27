-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfilesystemmodel-roles.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QFileSystemModel.Roles is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function FileIconRole return Class;-- 0x1
   function FilePathRole return Class;-- 0x101
   function FileNameRole return Class;-- 0x102
   function FilePermissions return Class;-- 0x103
end QtAda6.QtWidgets.QFileSystemModel.Roles;
