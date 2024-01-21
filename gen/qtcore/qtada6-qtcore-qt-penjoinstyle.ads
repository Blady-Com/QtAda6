-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-penjoinstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.PenJoinStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function MiterJoin return Class;-- 0x0
   function BevelJoin return Class;-- 0x40
   function RoundJoin return Class;-- 0x80
   function SvgMiterJoin return Class;-- 0x100
   function MPenJoinStyle return Class;-- 0x1c0
end QtAda6.QtCore.Qt.PenJoinStyle;
