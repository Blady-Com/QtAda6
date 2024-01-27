-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qframe-shape.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QFrame.Shape is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function NoFrame return Class;-- 0x0
   function Box return Class;-- 0x1
   function Panel return Class;-- 0x2
   function WinPanel return Class;-- 0x3
   function HLine return Class;-- 0x4
   function VLine return Class;-- 0x5
   function StyledPanel return Class;-- 0x6
end QtAda6.QtWidgets.QFrame.Shape;
