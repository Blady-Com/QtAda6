-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qpropertyanimation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAbstractAnimation.State;
with QtAda6.QtCore.QVariantAnimation;
package QtAda6.QtCore.QPropertyAnimation is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QVariantAnimation.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create
     (target_P : access QtAda6.QtCore.QObject.Inst'Class; propertyName_P : Union_QtAda6_QtCore_QByteArray_bytes;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function propertyName (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure setPropertyName (self : access Inst; propertyName_P : Union_QtAda6_QtCore_QByteArray_bytes);
   procedure setTargetObject (self : access Inst; target_P : access QtAda6.QtCore.QObject.Inst'Class);
   function targetObject (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   procedure updateCurrentValue (self : access Inst; value_P : Any);
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class);
end QtAda6.QtCore.QPropertyAnimation;
