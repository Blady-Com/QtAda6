-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-modifier.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.Modifier is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function SHIFT return Class;-- 0x2000000
   function CTRL return Class;-- 0x4000000
   function ALT return Class;-- 0x8000000
   function META return Class;-- 0x10000000
   function MODIFIER_MASK return Class;-- 0xfe000000
end QtAda6.QtCore.Qt.Modifier;
