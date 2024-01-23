-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qshortcutevent.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QKeySequence;
with QtAda6.QtCore.QKeyCombination;
with QtAda6.QtGui.QKeySequence.StandardKey;
with QtAda6.QtGui.QShortcut;
package body QtAda6.QtGui.QShortcutEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QShortcutEvent.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcutEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (key_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint;
      id_P  : int; ambiguous_P : bool := False) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcutEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (id_P));
      Tuple_SetItem (Args, 2, To_Python (ambiguous_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (key_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint;
      shortcut_P : access QtAda6.QtGui.QShortcut.Inst'Class := null; ambiguous_P : bool := False) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcutEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if shortcut_P /= null then shortcut_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (ambiguous_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function clone (self : access Inst) return access QtAda6.QtGui.QShortcutEvent.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QShortcutEvent.Class := new QtAda6.QtGui.QShortcutEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function isAmbiguous (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAmbiguous");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAmbiguous;
   function key (self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "key");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end key;
   function shortcutId (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shortcutId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end shortcutId;
end QtAda6.QtGui.QShortcutEvent;
