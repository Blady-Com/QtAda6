-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qinputmethod.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QInputMethod.Action;
with QtAda6.QtCore.QLocale;
with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtCore.QRect;
package body QtAda6.QtGui.QInputMethod is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function anchorRectangleChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "anchorRectangleChanged"));
   end anchorRectangleChanged;
   function animatingChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "animatingChanged"));
   end animatingChanged;
   function cursorRectangleChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cursorRectangleChanged"));
   end cursorRectangleChanged;
   function inputDirectionChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "inputDirectionChanged"));
   end inputDirectionChanged;
   function inputItemClipRectangleChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "inputItemClipRectangleChanged"));
   end inputItemClipRectangleChanged;
   function keyboardRectangleChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "keyboardRectangleChanged"));
   end keyboardRectangleChanged;
   function localeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "localeChanged"));
   end localeChanged;
   function visibleChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "visibleChanged"));
   end visibleChanged;
   function anchorRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "anchorRectangle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end anchorRectangle;
   procedure commit (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "commit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end commit;
   function cursorRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cursorRectangle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cursorRectangle;
   procedure hide (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hide");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end hide;
   function inputDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inputDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputDirection;
   function inputItemClipRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inputItemClipRectangle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputItemClipRectangle;
   function inputItemRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inputItemRectangle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputItemRectangle;
   function inputItemTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inputItemTransform");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputItemTransform;
   procedure invokeAction
     (self : access Inst; a_P : access QtAda6.QtGui.QInputMethod.Action.Inst'Class; cursorPosition_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invokeAction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (cursorPosition_P));
      Result := Object_CallObject (Method, Args, True);
   end invokeAction;
   function isAnimating (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAnimating");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAnimating;
   function isVisible (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isVisible;
   function keyboardRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "keyboardRectangle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end keyboardRectangle;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QLocale.Class := new QtAda6.QtCore.QLocale.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "locale");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end locale;
   function queryFocusObject
     (query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class; argument_P : Any) return Any
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethod");
      Method := Object_GetAttrString (Class, "queryFocusObject");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if query_P /= null then query_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if argument_P /= null then argument_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end queryFocusObject;
   procedure reset (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   procedure setInputItemRectangle (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInputItemRectangle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setInputItemRectangle;
   procedure setInputItemTransform (self : access Inst; transform_P : access QtAda6.QtGui.QTransform.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInputItemTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if transform_P /= null then transform_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setInputItemTransform;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Result := Object_CallObject (Method, Args, True);
   end setVisible;
   procedure show (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "show");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end show;
   procedure update (self : access Inst; queries_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if queries_P /= null then queries_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end update;
end QtAda6.QtGui.QInputMethod;
