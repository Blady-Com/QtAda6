-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlcdnumber-mode.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QLCDNumber.Mode is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Hex return Class;-- 0x0
   function Dec return Class;-- 0x1
   function Oct return Class;-- 0x2
   function Bin return Class;-- 0x3
end QtAda6.QtWidgets.QLCDNumber.Mode;
