-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgesturerecognizer.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QGesture;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QGestureRecognizer.ResultFlag;
with QtAda6.QtCore.Qt.GestureType;
package body QtAda6.QtWidgets.QGestureRecognizer is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function create
     (self : access Inst; target_P : access QtAda6.QtCore.QObject.Inst'Class)
      return access QtAda6.QtWidgets.QGesture.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGesture.Class := new QtAda6.QtWidgets.QGesture.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "create");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, target_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end create;
   function recognize
     (self      : access Inst; state_P : access QtAda6.QtWidgets.QGesture.Inst'Class;
      watched_P : access QtAda6.QtCore.QObject.Inst'Class; event_P : access QtAda6.QtCore.QEvent.Inst'Class)
      return access QtAda6.QtWidgets.QGestureRecognizer.ResultFlag.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGestureRecognizer.ResultFlag.Class :=
        new QtAda6.QtWidgets.QGestureRecognizer.ResultFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "recognize");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, state_P.Python_Proxy);
      Tuple_SetItem (Args, 1, watched_P.Python_Proxy);
      Tuple_SetItem (Args, 2, event_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end recognize;
   function registerRecognizer
     (recognizer_P : access QtAda6.QtWidgets.QGestureRecognizer.Inst'Class)
      return access QtAda6.QtCore.Qt.GestureType.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.GestureType.Class := new QtAda6.QtCore.Qt.GestureType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      Method := Object_GetAttrString (Class, "registerRecognizer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, recognizer_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end registerRecognizer;
   procedure reset (self : access Inst; state_P : access QtAda6.QtWidgets.QGesture.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, state_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   procedure unregisterRecognizer (type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      Method := Object_GetAttrString (Class, "unregisterRecognizer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end unregisterRecognizer;
end QtAda6.QtWidgets.QGestureRecognizer;
