-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextlength.adb
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
with QtAda6.QtGui.QTextLength.Type_K;
package body QtAda6.QtGui.QTextLength is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLength");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QTextLength_P : access QtAda6.QtGui.QTextLength.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLength");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QTextLength_P /= null then QTextLength_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (type_K_P : access QtAda6.QtGui.QTextLength.Type_K.Inst'Class; value_P : float) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLength");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (value_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLength");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function rawValue (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rawValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rawValue;
   function type_K_F (self : access Inst) return access QtAda6.QtGui.QTextLength.Type_K.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextLength.Type_K.Class := new QtAda6.QtGui.QTextLength.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
   function value (self : access Inst; maximumLength_P : float) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (maximumLength_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end value;
end QtAda6.QtGui.QTextLength;
