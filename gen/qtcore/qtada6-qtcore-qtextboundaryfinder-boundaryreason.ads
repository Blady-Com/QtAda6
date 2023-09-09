-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtextboundaryfinder-boundaryreason.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NotAtBoundary    : QTextBoundaryFinder.BoundaryReason.Class;-- 0x0
   BreakOpportunity : QTextBoundaryFinder.BoundaryReason.Class;-- 0x1f
   StartOfItem      : QTextBoundaryFinder.BoundaryReason.Class;-- 0x20
   EndOfItem        : QTextBoundaryFinder.BoundaryReason.Class;-- 0x40
   MandatoryBreak   : QTextBoundaryFinder.BoundaryReason.Class;-- 0x80
   SoftHyphen       : QTextBoundaryFinder.BoundaryReason.Class;-- 0x100
end QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason;
