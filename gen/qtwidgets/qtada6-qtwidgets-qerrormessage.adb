-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qerrormessage.adb
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
with QtAda6.QtWidgets.QDialog;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
package body QtAda6.QtWidgets.QErrorMessage is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QErrorMessage");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, e_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end changeEvent;
   procedure done (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "done");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end done;
   function qtHandler return access QtAda6.QtWidgets.QErrorMessage.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QErrorMessage.Class := new QtAda6.QtWidgets.QErrorMessage.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QErrorMessage");
      Method           := Object_GetAttrString (Class, "qtHandler");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qtHandler;
   procedure showMessage (self : access Inst; message_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Result := Object_CallObject (Method, Args, True);
   end showMessage;
   procedure showMessage (self : access Inst; message_P : str; type_K_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (type_K_P));
      Result := Object_CallObject (Method, Args, True);
   end showMessage;
end QtAda6.QtWidgets.QErrorMessage;
