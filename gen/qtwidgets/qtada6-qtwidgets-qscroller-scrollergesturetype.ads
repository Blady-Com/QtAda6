-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qscroller-scrollergesturetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QScroller.ScrollerGestureType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   TouchGesture             : QScroller.ScrollerGestureType.Class;-- 0x0
   LeftMouseButtonGesture   : QScroller.ScrollerGestureType.Class;-- 0x1
   RightMouseButtonGesture  : QScroller.ScrollerGestureType.Class;-- 0x2
   MiddleMouseButtonGesture : QScroller.ScrollerGestureType.Class;-- 0x3
end QtAda6.QtWidgets.QScroller.ScrollerGestureType;