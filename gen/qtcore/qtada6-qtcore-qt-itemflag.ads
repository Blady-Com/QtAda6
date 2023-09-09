-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-itemflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.ItemFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoItemFlags          : Qt.ItemFlag.Class;-- 0x0
   ItemIsSelectable     : Qt.ItemFlag.Class;-- 0x1
   ItemIsEditable       : Qt.ItemFlag.Class;-- 0x2
   ItemIsDragEnabled    : Qt.ItemFlag.Class;-- 0x4
   ItemIsDropEnabled    : Qt.ItemFlag.Class;-- 0x8
   ItemIsUserCheckable  : Qt.ItemFlag.Class;-- 0x10
   ItemIsEnabled        : Qt.ItemFlag.Class;-- 0x20
   ItemIsAutoTristate   : Qt.ItemFlag.Class;-- 0x40
   ItemNeverHasChildren : Qt.ItemFlag.Class;-- 0x80
   ItemIsUserTristate   : Qt.ItemFlag.Class;-- 0x100
end QtAda6.QtCore.Qt.ItemFlag;
