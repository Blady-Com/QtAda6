-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qswipegesture.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtWidgets.QSwipeGesture.SwipeDirection;
with QtAda6.QtWidgets.QGesture;
package QtAda6.QtWidgets.QSwipeGesture is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGesture.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function horizontalDirection
     (self : access Inst) return access QtAda6.QtWidgets.QSwipeGesture.SwipeDirection.Inst'Class;
   procedure setSwipeAngle (self : access Inst; value_P : float);
   function swipeAngle (self : access Inst) return float;
   function verticalDirection
     (self : access Inst) return access QtAda6.QtWidgets.QSwipeGesture.SwipeDirection.Inst'Class;
end QtAda6.QtWidgets.QSwipeGesture;
