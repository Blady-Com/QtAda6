-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qkeyevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QInputDevice;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
with QtAda6.QtGui.QInputEvent;
package QtAda6.QtGui.QKeyEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QInputEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) return Class;
   function Create
     (type_K_P           : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; key_P : int;
      modifiers_P        : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; nativeScanCode_P : int;
      nativeVirtualKey_P : int; nativeModifiers_P : int; text_P : str := ""; autorep_P : bool := False;
      count_P            : int := 0; device_P : access QtAda6.QtGui.QInputDevice.Inst'Class := null) return Class;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; key_P : int;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; text_P : str := ""; autorep_P : bool := False;
      count_P     : int := 0) return Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QKeyEvent.Inst'Class;
   function count (self : access Inst) return int;
   function isAutoRepeat (self : access Inst) return bool;
   function key (self : access Inst) return int;
   function keyCombination (self : access Inst) return access QtAda6.QtCore.QKeyCombination.Inst'Class;
   function matches (self : access Inst; key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return bool;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function nativeModifiers (self : access Inst) return int;
   function nativeScanCode (self : access Inst) return int;
   function nativeVirtualKey (self : access Inst) return int;
   function text (self : access Inst) return str;
end QtAda6.QtGui.QKeyEvent;
