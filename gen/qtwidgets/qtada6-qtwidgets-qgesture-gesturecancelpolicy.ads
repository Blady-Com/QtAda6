-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgesture-gesturecancelpolicy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QGesture.GestureCancelPolicy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   CancelNone         : QGesture.GestureCancelPolicy.Class;-- 0x0
   CancelAllInContext : QGesture.GestureCancelPolicy.Class;-- 0x1
end QtAda6.QtWidgets.QGesture.GestureCancelPolicy;
