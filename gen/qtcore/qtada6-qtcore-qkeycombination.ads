-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qkeycombination.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.Qt.Key;
limited with QtAda6.QtCore.Qt.Modifier;
package QtAda6.QtCore.QKeyCombination is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key is new Any;
   procedure Finalize (Self : in out Class);
   function Create
     (arg_1_P : UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key) return Class;
   function Create (key_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null) return Class;
   function Create
     (modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      key_P       : access QtAda6.QtCore.Qt.Key.Inst'Class := null) return Class;
   function Create
     (modifiers_P : access QtAda6.QtCore.Qt.Modifier.Inst'Class; key_P : access QtAda6.QtCore.Qt.Key.Inst'Class)
      return Class;
   procedure U_copy_U;
   function fromCombined (combined_P : int) return access QtAda6.QtCore.QKeyCombination.Inst'Class;
   function key (self : access Inst) return access QtAda6.QtCore.Qt.Key.Inst'Class;
   function keyboardModifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function toCombined (self : access Inst) return int;
end QtAda6.QtCore.QKeyCombination;
