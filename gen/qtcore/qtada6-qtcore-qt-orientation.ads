-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-orientation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.Orientation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function Value (V : access Inst) return int;
   function Image (V : access Inst) return str;
   function "or" (L, R : Class) return Class;
   function Horizontal return Class;-- 0x1
   Horizontal_Value : constant := 16#1#;
   function Vertical return Class;-- 0x2
   Vertical_Value : constant := 16#2#;
end QtAda6.QtCore.Qt.Orientation;
