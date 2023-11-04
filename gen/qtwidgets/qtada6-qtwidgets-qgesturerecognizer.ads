-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgesturerecognizer.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtWidgets.QGesture;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QGestureRecognizer.ResultFlag;
limited with QtAda6.QtCore.Qt.GestureType;
package QtAda6.QtWidgets.QGestureRecognizer is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function create
     (self : access Inst; target_P : access QtAda6.QtCore.QObject.Inst'Class)
      return access QtAda6.QtWidgets.QGesture.Inst'Class;
   function recognize
     (self      : access Inst; state_P : access QtAda6.QtWidgets.QGesture.Inst'Class;
      watched_P : access QtAda6.QtCore.QObject.Inst'Class; event_P : access QtAda6.QtCore.QEvent.Inst'Class)
      return access QtAda6.QtWidgets.QGestureRecognizer.ResultFlag.Inst'Class;
   function registerRecognizer
     (recognizer_P : access QtAda6.QtWidgets.QGestureRecognizer.Inst'Class)
      return access QtAda6.QtCore.Qt.GestureType.Inst'Class;
   procedure reset (self : access Inst; state_P : access QtAda6.QtWidgets.QGesture.Inst'Class);
   procedure unregisterRecognizer (type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class);
end QtAda6.QtWidgets.QGestureRecognizer;
