-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qkeysequence.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtGui.QKeySequence.SequenceFormat;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QKeySequence.SequenceMatch;
package QtAda6.QtGui.QKeySequence is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key is new Any;
   type UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int is
     new Any;
   subtype LIST_QtAda6_QtGui_QKeySequence is QtAda6.QtGui.QKeySequence.Class_Array;
   subtype SEQUENCE_QtAda6_QtGui_QKeySequence is QtAda6.QtGui.QKeySequence.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (k1_P : int; k2_P : int := 0; k3_P : int := 0; k4_P : int := 0) return Class;
   function Create
     (k1_P : UNION_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key;
      k2_P : UNION_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key := null;
      k3_P : UNION_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key := null;
      k4_P : UNION_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key := null)
      return Class;
   function Create (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return Class;
   function Create
     (key_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return Class;
   function Create
     (ks_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_rshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function count (self : access Inst) return int;
   function fromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null)
      return access QtAda6.QtGui.QKeySequence.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function keyBindings
     (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return LIST_QtAda6_QtGui_QKeySequence;
   function listFromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null)
      return LIST_QtAda6_QtGui_QKeySequence;
   function listToString
     (list_P   : SEQUENCE_QtAda6_QtGui_QKeySequence;
      format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return str;
   function matches
     (self  : access Inst;
      seq_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class;
   function mnemonic (text_P : str) return access QtAda6.QtGui.QKeySequence.Inst'Class;
   procedure swap
     (self    : access Inst;
      other_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int);
   function toString
     (self : access Inst; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return str;
end QtAda6.QtGui.QKeySequence;
