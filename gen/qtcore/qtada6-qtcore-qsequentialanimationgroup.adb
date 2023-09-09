-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsequentialanimationgroup.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QAnimationGroup;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QPauseAnimation;
with QtAda6.QtCore.QAbstractAnimation;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QAbstractAnimation.Direction;
with QtAda6.QtCore.QAbstractAnimation.State;
package body QtAda6.QtCore.QSequentialAnimationGroup is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSequentialAnimationGroup");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function addPause (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QPauseAnimation.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPauseAnimation.Class := new QtAda6.QtCore.QPauseAnimation.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPause");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addPause;
   function currentAnimation (self : access Inst) return access QtAda6.QtCore.QAbstractAnimation.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractAnimation.Class := new QtAda6.QtCore.QAbstractAnimation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentAnimation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentAnimation;
   function duration (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "duration");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end duration;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function insertPause
     (self : access Inst; index_P : int; msecs_P : int) return access QtAda6.QtCore.QPauseAnimation.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPauseAnimation.Class := new QtAda6.QtCore.QPauseAnimation.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertPause");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (msecs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertPause;
   procedure updateCurrentTime (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCurrentTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end updateCurrentTime;
   procedure updateDirection
     (self : access Inst; direction_P : access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end updateDirection;
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateState");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, newState_P.Python_Proxy);
      Tuple_SetItem (Args, 1, oldState_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end updateState;
end QtAda6.QtCore.QSequentialAnimationGroup;
