-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextlistformat.adb
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
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QTextListFormat.Style;
package body QtAda6.QtGui.QTextListFormat is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QTextListFormat_P : access QtAda6.QtGui.QTextListFormat.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QTextListFormat_P /= null then QTextListFormat_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fmt_P /= null then fmt_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function indent (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indent;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function numberPrefix (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "numberPrefix");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end numberPrefix;
   function numberSuffix (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "numberSuffix");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end numberSuffix;
   procedure setIndent (self : access Inst; indent_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIndent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (indent_P));
      Result := Object_CallObject (Method, Args, True);
   end setIndent;
   procedure setNumberPrefix (self : access Inst; numberPrefix_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNumberPrefix");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (numberPrefix_P));
      Result := Object_CallObject (Method, Args, True);
   end setNumberPrefix;
   procedure setNumberSuffix (self : access Inst; numberSuffix_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNumberSuffix");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (numberSuffix_P));
      Result := Object_CallObject (Method, Args, True);
   end setNumberSuffix;
   procedure setStyle (self : access Inst; style_P : access QtAda6.QtGui.QTextListFormat.Style.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setStyle;
   function style_F (self : access Inst) return access QtAda6.QtGui.QTextListFormat.Style.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextListFormat.Style.Class := new QtAda6.QtGui.QTextListFormat.Style.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style_F;
end QtAda6.QtGui.QTextListFormat;
