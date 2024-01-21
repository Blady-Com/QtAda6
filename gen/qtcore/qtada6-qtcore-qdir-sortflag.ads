-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdir-sortflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QDir.SortFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoSort return Class;-- -0x1
   function Name return Class;-- 0x0
   function Time return Class;-- 0x1
   function Size return Class;-- 0x2
   function SortByMask return Class;-- 0x3
   function Unsorted return Class;-- 0x3
   function DirsFirst return Class;-- 0x4
   function Reversed return Class;-- 0x8
   function IgnoreCase return Class;-- 0x10
   function DirsLast return Class;-- 0x20
   function LocaleAware return Class;-- 0x40
   function Type_K return Class;-- 0x80
end QtAda6.QtCore.QDir.SortFlag;
