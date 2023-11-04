-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qswipegesture.adb
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
with QtAda6.QtWidgets.QGesture;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QSwipeGesture.SwipeDirection;
package body QtAda6.QtWidgets.QSwipeGesture is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSwipeGesture");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function horizontalDirection
     (self : access Inst) return access QtAda6.QtWidgets.QSwipeGesture.SwipeDirection.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QSwipeGesture.SwipeDirection.Class :=
        new QtAda6.QtWidgets.QSwipeGesture.SwipeDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "horizontalDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end horizontalDirection;
   procedure setSwipeAngle (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSwipeAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setSwipeAngle;
   function swipeAngle (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swipeAngle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end swipeAngle;
   function verticalDirection
     (self : access Inst) return access QtAda6.QtWidgets.QSwipeGesture.SwipeDirection.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QSwipeGesture.SwipeDirection.Class :=
        new QtAda6.QtWidgets.QSwipeGesture.SwipeDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "verticalDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end verticalDirection;
end QtAda6.QtWidgets.QSwipeGesture;
