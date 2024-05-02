-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgesturerecognizer.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
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
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function create
     (self : access Inst; target_P : access QtAda6.QtCore.QObject.Inst'Class)
      return access QtAda6.QtWidgets.QGesture.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGesture.Class := new QtAda6.QtWidgets.QGesture.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "create");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end create;
   function recognize
     (self      : access Inst; state_P : access QtAda6.QtWidgets.QGesture.Inst'Class;
      watched_P : access QtAda6.QtCore.QObject.Inst'Class; event_P : access QtAda6.QtCore.QEvent.Inst'Class)
      return access QtAda6.QtWidgets.QGestureRecognizer.ResultFlag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtWidgets.QGestureRecognizer.ResultFlag.Class :=
        new QtAda6.QtWidgets.QGestureRecognizer.ResultFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "recognize");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if watched_P /= null then watched_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end recognize;
   function registerRecognizer
     (recognizer_P : access QtAda6.QtWidgets.QGestureRecognizer.Inst'Class)
      return access QtAda6.QtCore.Qt.GestureType.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.GestureType.Class := new QtAda6.QtCore.Qt.GestureType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      Method := Object_GetAttrString (Class, "registerRecognizer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if recognizer_P /= null then recognizer_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end registerRecognizer;
   procedure reset (self : access Inst; state_P : access QtAda6.QtWidgets.QGesture.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reset;
   procedure unregisterRecognizer (type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      Method := Object_GetAttrString (Class, "unregisterRecognizer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterRecognizer;
end QtAda6.QtWidgets.QGestureRecognizer;
