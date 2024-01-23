-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qdoublevalidator.adb
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
with QtAda6.QtGui.QValidator;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QDoubleValidator.Notation;
package body QtAda6.QtGui.QDoubleValidator is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function bottomChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "bottomChanged"));
   end bottomChanged;
   function decimalsChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "decimalsChanged"));
   end decimalsChanged;
   function notationChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "notationChanged"));
   end notationChanged;
   function topChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "topChanged"));
   end topChanged;
   function Create
     (bottom_P : float; top_P : float; decimals_P : int; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDoubleValidator");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (bottom_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (top_P));
      Tuple_SetItem (Args, 2, Long_FromLong (decimals_P));
      Tuple_SetItem (Args, 3, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDoubleValidator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function bottom (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottom");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end bottom;
   function decimals (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "decimals");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end decimals;
   function fixup (self : access Inst; input_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fixup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (input_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fixup;
   function notation_F (self : access Inst) return access QtAda6.QtGui.QDoubleValidator.Notation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QDoubleValidator.Notation.Class := new QtAda6.QtGui.QDoubleValidator.Notation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "notation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end notation_F;
   procedure setBottom (self : access Inst; arg_1_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottom");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setBottom;
   procedure setDecimals (self : access Inst; arg_1_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDecimals");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setDecimals;
   procedure setNotation (self : access Inst; arg_1_P : access QtAda6.QtGui.QDoubleValidator.Notation.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNotation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setNotation;
   procedure setRange (self : access Inst; bottom_P : float; top_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (bottom_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (top_P));
      Result := Object_CallObject (Method, Args, True);
   end setRange;
   procedure setRange (self : access Inst; bottom_P : float; top_P : float; decimals_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRange");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (bottom_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (top_P));
      Tuple_SetItem (Args, 2, Long_FromLong (decimals_P));
      Result := Object_CallObject (Method, Args, True);
   end setRange;
   procedure setTop (self : access Inst; arg_1_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTop");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setTop;
   function top (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "top");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end top;
   function validate (self : access Inst; arg_1_P : str; arg_2_P : int) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "validate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (arg_2_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end validate;
end QtAda6.QtGui.QDoubleValidator;
