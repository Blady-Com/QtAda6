-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qwaitcondition.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QMutex;
with QtAda6.QtCore.QDeadlineTimer;
with QtAda6.QtCore.QDeadlineTimer.ForeverConstant;
with QtAda6.QtCore.Qt.TimerType;
with QtAda6.QtCore.QReadWriteLock;
package body QtAda6.QtCore.QWaitCondition is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QWaitCondition");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure notify_all (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "notify_all");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end notify_all;
   procedure notify_one (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "notify_one");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end notify_one;
   function wait
     (self       : access Inst; lockedMutex_P : access QtAda6.QtCore.QMutex.Inst'Class;
      deadline_P : access QtAda6.QtCore.QDeadlineTimer.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lockedMutex_P /= null then lockedMutex_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if deadline_P /= null then
         Dict_SetItemString (Dict, "deadline", deadline_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self       : access Inst; lockedMutex_P : access QtAda6.QtCore.QMutex.Inst'Class;
      deadline_P : access QtAda6.QtCore.QDeadlineTimer.ForeverConstant.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lockedMutex_P /= null then lockedMutex_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if deadline_P /= null then
         Dict_SetItemString (Dict, "deadline", deadline_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self       : access Inst; lockedMutex_P : access QtAda6.QtCore.QMutex.Inst'Class;
      deadline_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lockedMutex_P /= null then lockedMutex_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if deadline_P /= null then
         Dict_SetItemString (Dict, "deadline", deadline_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self : access Inst; lockedMutex_P : access QtAda6.QtCore.QMutex.Inst'Class; deadline_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lockedMutex_P /= null then lockedMutex_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if deadline_P /= 0 then
         Dict_SetItemString (Dict, "deadline", Long_FromLong (deadline_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self       : access Inst; lockedReadWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class;
      deadline_P : access QtAda6.QtCore.QDeadlineTimer.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lockedReadWriteLock_P /= null then lockedReadWriteLock_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if deadline_P /= null then
         Dict_SetItemString (Dict, "deadline", deadline_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self       : access Inst; lockedReadWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class;
      deadline_P : access QtAda6.QtCore.QDeadlineTimer.ForeverConstant.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lockedReadWriteLock_P /= null then lockedReadWriteLock_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if deadline_P /= null then
         Dict_SetItemString (Dict, "deadline", deadline_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self       : access Inst; lockedReadWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class;
      deadline_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lockedReadWriteLock_P /= null then lockedReadWriteLock_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if deadline_P /= null then
         Dict_SetItemString (Dict, "deadline", deadline_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self : access Inst; lockedReadWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class; deadline_P : int := 0)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lockedReadWriteLock_P /= null then lockedReadWriteLock_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if deadline_P /= 0 then
         Dict_SetItemString (Dict, "deadline", Long_FromLong (deadline_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wait;
   procedure wakeAll (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wakeAll");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end wakeAll;
   procedure wakeOne (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wakeOne");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end wakeOne;
end QtAda6.QtCore.QWaitCondition;
