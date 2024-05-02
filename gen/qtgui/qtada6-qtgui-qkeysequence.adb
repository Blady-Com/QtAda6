-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qkeysequence.adb
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
with QtAda6.QtCore.QKeyCombination;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.Qt.Key;
with QtAda6.QtGui.QKeySequence.StandardKey;
with QtAda6.QtGui.QKeySequence.SequenceFormat;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QKeySequence.SequenceMatch;
package body QtAda6.QtGui.QKeySequence is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (k1_P : int; k2_P : int := 0; k3_P : int := 0; k4_P : int := 0) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (k1_P));
      Dict := Dict_New;
      if k2_P /= 0 then
         Dict_SetItemString (Dict, "k2", Long_FromLong (k2_P));
      end if;
      if k3_P /= 0 then
         Dict_SetItemString (Dict, "k3", Long_FromLong (k3_P));
      end if;
      if k4_P /= 0 then
         Dict_SetItemString (Dict, "k4", Long_FromLong (k4_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.QKeyCombination.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class     := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class          := null;
      k4_P : access QtAda6.QtCore.QKeyCombination.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class              := null;
      k4_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (k1_P : access QtAda6.QtCore.Qt.Key.Inst'Class; k2_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null;
      k3_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null; k4_P : access QtAda6.QtCore.Qt.Key.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if k2_P /= null then
         Dict_SetItemString (Dict, "k2", k2_P.Python_Proxy);
      end if;
      if k3_P /= null then
         Dict_SetItemString (Dict, "k3", k3_P.Python_Proxy);
      end if;
      if k4_P /= null then
         Dict_SetItemString (Dict, "k4", k4_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (key_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Dict := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (ks_P : access QtAda6.QtGui.QKeySequence.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ks_P /= null then ks_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (ks_P : access QtAda6.QtCore.QKeyCombination.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ks_P /= null then ks_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (ks_P : str) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (ks_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (ks_P : int) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (ks_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if in_U_P /= null then in_U_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function U_rshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if out_K_P /= null then out_K_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function count (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end count;
   function fromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null)
      return access QtAda6.QtGui.QKeySequence.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Dict := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function keyBindings
     (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return LIST_QtAda6_QtGui_QKeySequence
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "keyBindings");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtGui_QKeySequence (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end keyBindings;
   function listFromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null)
      return LIST_QtAda6_QtGui_QKeySequence
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "listFromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Dict := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtGui_QKeySequence (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end listFromString;
   function listToString
     (list_P   : SEQUENCE_QtAda6_QtGui_QKeySequence;
      format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return str
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "listToString");
      Args   := Tuple_New (1);
      List   := List_New (list_P'Length);
      for ind in list_P'Range loop
         List_SetItem
           (List, ssize_t (ind - list_P'First), (if list_P (ind) /= null then list_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end listToString;
   function matches
     (self : access Inst; seq_P : access QtAda6.QtGui.QKeySequence.Inst'Class)
      return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.SequenceMatch.Class := new QtAda6.QtGui.QKeySequence.SequenceMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if seq_P /= null then seq_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matches;
   function matches
     (self : access Inst; seq_P : access QtAda6.QtCore.QKeyCombination.Inst'Class)
      return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.SequenceMatch.Class := new QtAda6.QtGui.QKeySequence.SequenceMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if seq_P /= null then seq_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matches;
   function matches
     (self : access Inst; seq_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class)
      return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.SequenceMatch.Class := new QtAda6.QtGui.QKeySequence.SequenceMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if seq_P /= null then seq_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matches;
   function matches (self : access Inst; seq_P : str) return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.SequenceMatch.Class := new QtAda6.QtGui.QKeySequence.SequenceMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (seq_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matches;
   function matches (self : access Inst; seq_P : int) return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.SequenceMatch.Class := new QtAda6.QtGui.QKeySequence.SequenceMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (seq_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matches;
   function mnemonic (text_P : str) return access QtAda6.QtGui.QKeySequence.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "mnemonic");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mnemonic;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QKeySequence.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QKeyCombination.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swap (self : access Inst; other_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (other_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swap (self : access Inst; other_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (other_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function toString
     (self : access Inst; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toString;
end QtAda6.QtGui.QKeySequence;
