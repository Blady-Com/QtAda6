-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlayout-sizeconstraint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QLayout.SizeConstraint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function SetDefaultConstraint return Class;-- 0x0
   function SetNoConstraint return Class;-- 0x1
   function SetMinimumSize return Class;-- 0x2
   function SetFixedSize return Class;-- 0x3
   function SetMaximumSize return Class;-- 0x4
   function SetMinAndMaxSize return Class;-- 0x5
end QtAda6.QtWidgets.QLayout.SizeConstraint;
