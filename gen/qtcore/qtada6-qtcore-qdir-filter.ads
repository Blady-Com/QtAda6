-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdir-filter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QDir.Filter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoFilter       : QDir.Filter.Class;-- -0x1
   Dirs           : QDir.Filter.Class;-- 0x1
   Files          : QDir.Filter.Class;-- 0x2
   Drives         : QDir.Filter.Class;-- 0x4
   AllEntries     : QDir.Filter.Class;-- 0x7
   NoSymLinks     : QDir.Filter.Class;-- 0x8
   TypeMask       : QDir.Filter.Class;-- 0xf
   Readable       : QDir.Filter.Class;-- 0x10
   Writable       : QDir.Filter.Class;-- 0x20
   Executable     : QDir.Filter.Class;-- 0x40
   PermissionMask : QDir.Filter.Class;-- 0x70
   Modified       : QDir.Filter.Class;-- 0x80
   Hidden         : QDir.Filter.Class;-- 0x100
   System         : QDir.Filter.Class;-- 0x200
   AccessMask     : QDir.Filter.Class;-- 0x3f0
   AllDirs        : QDir.Filter.Class;-- 0x400
   CaseSensitive  : QDir.Filter.Class;-- 0x800
   NoDot          : QDir.Filter.Class;-- 0x2000
   NoDotDot       : QDir.Filter.Class;-- 0x4000
   NoDotAndDotDot : QDir.Filter.Class;-- 0x6000
end QtAda6.QtCore.QDir.Filter;
