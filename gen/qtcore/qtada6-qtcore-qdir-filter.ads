-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdir-filter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QDir.Filter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoFilter return Class;-- -0x1
   function Dirs return Class;-- 0x1
   function Files return Class;-- 0x2
   function Drives return Class;-- 0x4
   function AllEntries return Class;-- 0x7
   function NoSymLinks return Class;-- 0x8
   function TypeMask return Class;-- 0xf
   function Readable return Class;-- 0x10
   function Writable return Class;-- 0x20
   function Executable return Class;-- 0x40
   function PermissionMask return Class;-- 0x70
   function Modified return Class;-- 0x80
   function Hidden return Class;-- 0x100
   function System return Class;-- 0x200
   function AccessMask return Class;-- 0x3f0
   function AllDirs return Class;-- 0x400
   function CaseSensitive return Class;-- 0x800
   function NoDot return Class;-- 0x2000
   function NoDotDot return Class;-- 0x4000
   function NoDotAndDotDot return Class;-- 0x6000
end QtAda6.QtCore.QDir.Filter;
