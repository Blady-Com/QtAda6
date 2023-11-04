-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qswipegesture-swipedirection.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QSwipeGesture.SwipeDirection is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoDirection : QSwipeGesture.SwipeDirection.Class;-- 0x0
   Left        : QSwipeGesture.SwipeDirection.Class;-- 0x1
   Right       : QSwipeGesture.SwipeDirection.Class;-- 0x2
   Up          : QSwipeGesture.SwipeDirection.Class;-- 0x3
   Down        : QSwipeGesture.SwipeDirection.Class;-- 0x4
end QtAda6.QtWidgets.QSwipeGesture.SwipeDirection;
