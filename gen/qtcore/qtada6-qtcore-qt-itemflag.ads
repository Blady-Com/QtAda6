-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-itemflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.ItemFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoItemFlags return Class;-- 0x0
   function ItemIsSelectable return Class;-- 0x1
   function ItemIsEditable return Class;-- 0x2
   function ItemIsDragEnabled return Class;-- 0x4
   function ItemIsDropEnabled return Class;-- 0x8
   function ItemIsUserCheckable return Class;-- 0x10
   function ItemIsEnabled return Class;-- 0x20
   function ItemIsAutoTristate return Class;-- 0x40
   function ItemNeverHasChildren return Class;-- 0x80
   function ItemIsUserTristate return Class;-- 0x100
end QtAda6.QtCore.Qt.ItemFlag;
