-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsizepolicy-policy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QSizePolicy.Policy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Fixed            : QSizePolicy.Policy.Class;-- 0x0
   Minimum          : QSizePolicy.Policy.Class;-- 0x1
   MinimumExpanding : QSizePolicy.Policy.Class;-- 0x3
   Maximum          : QSizePolicy.Policy.Class;-- 0x4
   Preferred        : QSizePolicy.Policy.Class;-- 0x5
   Expanding        : QSizePolicy.Policy.Class;-- 0x7
   Ignored          : QSizePolicy.Policy.Class;-- 0xd
end QtAda6.QtWidgets.QSizePolicy.Policy;
