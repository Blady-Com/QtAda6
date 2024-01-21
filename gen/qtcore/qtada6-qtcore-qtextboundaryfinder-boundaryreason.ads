-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtextboundaryfinder-boundaryreason.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NotAtBoundary return Class;-- 0x0
   function BreakOpportunity return Class;-- 0x1f
   function StartOfItem return Class;-- 0x20
   function EndOfItem return Class;-- 0x40
   function MandatoryBreak return Class;-- 0x80
   function SoftHyphen return Class;-- 0x100
end QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason;
