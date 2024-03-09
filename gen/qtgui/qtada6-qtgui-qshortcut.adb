-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qshortcut.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtGui.QKeySequence.StandardKey;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.ShortcutContext;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QKeySequence;
package body QtAda6.QtGui.QShortcut is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function activated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "activated"));
   end activated;
   function activatedAmbiguously (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "activatedAmbiguously"));
   end activatedAmbiguously;
   function Create
     (arg_1_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QObject.Inst'Class; arg_3_P : CALLABLE;
      arg_4_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if arg_3_P /= null then arg_3_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if arg_4_P /= null then
         Dict_SetItemString (Dict, "arg__4", arg_4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (arg_1_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      arg_2_P : access QtAda6.QtCore.QObject.Inst'Class; arg_3_P : CALLABLE;
      arg_4_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if arg_3_P /= null then arg_3_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if arg_4_P /= null then
         Dict_SetItemString (Dict, "arg__4", arg_4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (key_P     : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;
      parent_P  : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes := ""; ambiguousMember_P : bytes := "";
      context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if member_P /= "" then
         Dict_SetItemString (Dict, "member", Bytes_FromString (String (member_P)));
      end if;
      if ambiguousMember_P /= "" then
         Dict_SetItemString (Dict, "ambiguousMember", Bytes_FromString (String (ambiguousMember_P)));
      end if;
      if context_P /= null then
         Dict_SetItemString (Dict, "context", context_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (key_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      parent_P  : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes := ""; ambiguousMember_P : bytes := "";
      context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if member_P /= "" then
         Dict_SetItemString (Dict, "member", Bytes_FromString (String (member_P)));
      end if;
      if ambiguousMember_P /= "" then
         Dict_SetItemString (Dict, "ambiguousMember", Bytes_FromString (String (ambiguousMember_P)));
      end if;
      if context_P /= null then
         Dict_SetItemString (Dict, "context", context_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function autoRepeat (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoRepeat");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end autoRepeat;
   function context (self : access Inst) return access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ShortcutContext.Class := new QtAda6.QtCore.Qt.ShortcutContext.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "context");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end context;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function id (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "id");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end id;
   function isEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEnabled;
   function key (self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "key");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end key;
   function keys (self : access Inst) return LIST_QtAda6_QtGui_QKeySequence is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keys");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end keys;
   procedure setAutoRepeat (self : access Inst; on_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoRepeat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAutoRepeat;
   procedure setContext (self : access Inst; context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setContext");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if context_P /= null then context_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setContext;
   procedure setEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEnabled;
   procedure setKey
     (self  : access Inst;
      key_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKey");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setKey;
   procedure setKeys (self : access Inst; key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeys");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setKeys;
   procedure setKeys (self : access Inst; keys_P : SEQUENCE_QtAda6_QtGui_QKeySequence) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeys");
      List   := List_New (keys_P'Length);
      for ind in keys_P'Range loop
         List_SetItem
           (List, ssize_t (ind - keys_P'First), (if keys_P (ind) /= null then keys_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setKeys;
   procedure setWhatsThis (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWhatsThis");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWhatsThis;
   function whatsThis (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "whatsThis");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end whatsThis;
end QtAda6.QtGui.QShortcut;
