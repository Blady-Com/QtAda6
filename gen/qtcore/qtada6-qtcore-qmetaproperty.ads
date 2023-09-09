-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetaproperty.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QMetaEnum;
limited with QtAda6.QtCore.QMetaType;
limited with QtAda6.QtCore.QMetaMethod;
limited with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QMetaProperty is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QMetaProperty_P : access QtAda6.QtCore.QMetaProperty.Inst'Class) return Class;
   procedure U_copy_U;
   function enumerator (self : access Inst) return access QtAda6.QtCore.QMetaEnum.Inst'Class;
   function hasNotifySignal (self : access Inst) return bool;
   function hasStdCppSet (self : access Inst) return bool;
   function isAlias (self : access Inst) return bool;
   function isBindable (self : access Inst) return bool;
   function isConstant (self : access Inst) return bool;
   function isDesignable (self : access Inst) return bool;
   function isEnumType (self : access Inst) return bool;
   function isFinal (self : access Inst) return bool;
   function isFlagType (self : access Inst) return bool;
   function isReadable (self : access Inst) return bool;
   function isRequired (self : access Inst) return bool;
   function isResettable (self : access Inst) return bool;
   function isScriptable (self : access Inst) return bool;
   function isStored (self : access Inst) return bool;
   function isUser (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function isWritable (self : access Inst) return bool;
   function metaType (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class;
   function name (self : access Inst) return bytes;
   function notifySignal (self : access Inst) return access QtAda6.QtCore.QMetaMethod.Inst'Class;
   function notifySignalIndex (self : access Inst) return int;
   function propertyIndex (self : access Inst) return int;
   function read (self : access Inst; obj_P : access QtAda6.QtCore.QObject.Inst'Class) return Any;
   function readOnGadget (self : access Inst; gadget_P : int) return Any;
   function relativePropertyIndex (self : access Inst) return int;
   function reset (self : access Inst; obj_P : access QtAda6.QtCore.QObject.Inst'Class) return bool;
   function resetOnGadget (self : access Inst; gadget_P : int) return bool;
   function revision (self : access Inst) return int;
   function typeId (self : access Inst) return int;
   function typeName (self : access Inst) return bytes;
   function userType (self : access Inst) return int;
   function write (self : access Inst; obj_P : access QtAda6.QtCore.QObject.Inst'Class; value_P : Any) return bool;
   function writeOnGadget (self : access Inst; gadget_P : int; value_P : Any) return bool;
end QtAda6.QtCore.QMetaProperty;
