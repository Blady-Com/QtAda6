-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdir-sortflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QDir.SortFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoSort      : QDir.SortFlag.Class;-- -0x1
   Name        : QDir.SortFlag.Class;-- 0x0
   Time        : QDir.SortFlag.Class;-- 0x1
   Size        : QDir.SortFlag.Class;-- 0x2
   SortByMask  : QDir.SortFlag.Class;-- 0x3
   Unsorted    : QDir.SortFlag.Class;-- 0x3
   DirsFirst   : QDir.SortFlag.Class;-- 0x4
   Reversed    : QDir.SortFlag.Class;-- 0x8
   IgnoreCase  : QDir.SortFlag.Class;-- 0x10
   DirsLast    : QDir.SortFlag.Class;-- 0x20
   LocaleAware : QDir.SortFlag.Class;-- 0x40
   Type_K      : QDir.SortFlag.Class;-- 0x80
end QtAda6.QtCore.QDir.SortFlag;
