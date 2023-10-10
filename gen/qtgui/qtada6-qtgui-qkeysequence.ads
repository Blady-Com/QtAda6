-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qkeysequence.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.Qt.Key;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtGui.QKeySequence.SequenceFormat;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QKeySequence.SequenceMatch;
package QtAda6.QtGui.QKeySequence is
   type Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key is access Any;
   type Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int is
     access Any;
   type List_QtAda6_QtGui_QKeySequence is access Any;
   type Sequence_QtAda6_QtGui_QKeySequence is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (k1_P : int; k2_P : int; k3_P : int; k4_P : int) return Class;
   function Create
     (k1_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key;
      k2_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key;
      k3_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key;
      k4_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key) return Class;
   function Create (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return Class;
   function Create (key_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class) return Class;
   function Create
     (ks_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_reduce_U (self : access Inst) return Object;
   function U_repr_U (self : access Inst) return Object;
   function U_rshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function count (self : access Inst) return int;
   function fromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class)
      return access QtAda6.QtGui.QKeySequence.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function keyBindings
     (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return List_QtAda6_QtGui_QKeySequence;
   function listFromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class)
      return List_QtAda6_QtGui_QKeySequence;
   function listToString
     (list_P   : Sequence_QtAda6_QtGui_QKeySequence;
      format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class) return str;
   function matches
     (self  : access Inst;
      seq_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class;
   function mnemonic (text_P : str) return access QtAda6.QtGui.QKeySequence.Inst'Class;
   procedure swap
     (self    : access Inst;
      other_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int);
   function toString
     (self : access Inst; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class) return str;
end QtAda6.QtGui.QKeySequence;
