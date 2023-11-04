-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsizepolicy-policyflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtWidgets.QSizePolicy.PolicyFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   GrowFlag   : QSizePolicy.PolicyFlag.Class;-- 0x1
   ExpandFlag : QSizePolicy.PolicyFlag.Class;-- 0x2
   ShrinkFlag : QSizePolicy.PolicyFlag.Class;-- 0x4
   IgnoreFlag : QSizePolicy.PolicyFlag.Class;-- 0x8
end QtAda6.QtWidgets.QSizePolicy.PolicyFlag;
