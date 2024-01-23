-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qregularexpressionvalidator.adb
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
with QtAda6.QtCore.QRegularExpression;
package body QtAda6.QtGui.QRegularExpressionValidator is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function regularExpressionChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "regularExpressionChanged"));
   end regularExpressionChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRegularExpressionValidator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (re_P : UNION_QtAda6_QtCore_QRegularExpressionstr; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRegularExpressionValidator");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if re_P /= null then re_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function regularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpression.Class := new QtAda6.QtCore.QRegularExpression.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "regularExpression");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end regularExpression;
   procedure setRegularExpression (self : access Inst; re_P : UNION_QtAda6_QtCore_QRegularExpressionstr) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRegularExpression");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if re_P /= null then re_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRegularExpression;
   function validate (self : access Inst; input_P : str; pos_P : int) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "validate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (input_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end validate;
end QtAda6.QtGui.QRegularExpressionValidator;
