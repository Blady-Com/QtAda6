-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qanimationgroup.adb
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
with QtAda6.QtCore.QAbstractAnimation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QEvent;
package body QtAda6.QtCore.QAnimationGroup is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QAnimationGroup");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addAnimation (self : access Inst; animation_P : access QtAda6.QtCore.QAbstractAnimation.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAnimation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if animation_P /= null then animation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addAnimation;
   function animationAt (self : access Inst; index_P : int) return access QtAda6.QtCore.QAbstractAnimation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractAnimation.Class := new QtAda6.QtCore.QAbstractAnimation.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "animationAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end animationAt;
   function animationCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "animationCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end animationCount;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function indexOfAnimation
     (self : access Inst; animation_P : access QtAda6.QtCore.QAbstractAnimation.Inst'Class) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfAnimation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if animation_P /= null then animation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfAnimation;
   procedure insertAnimation
     (self : access Inst; index_P : int; animation_P : access QtAda6.QtCore.QAbstractAnimation.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertAnimation");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if animation_P /= null then animation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end insertAnimation;
   procedure removeAnimation (self : access Inst; animation_P : access QtAda6.QtCore.QAbstractAnimation.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAnimation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if animation_P /= null then animation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeAnimation;
   function takeAnimation (self : access Inst; index_P : int) return access QtAda6.QtCore.QAbstractAnimation.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractAnimation.Class := new QtAda6.QtCore.QAbstractAnimation.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeAnimation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeAnimation;
end QtAda6.QtCore.QAnimationGroup;
