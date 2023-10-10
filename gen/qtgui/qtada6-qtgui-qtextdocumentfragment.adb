-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextdocumentfragment.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextCursor;
with QtAda6.QtGui.QTextDocument.MarkdownFeature;
package body QtAda6.QtGui.QTextDocumentFragment is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, document_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (range_K_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, range_K_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (rhs_P : access QtAda6.QtGui.QTextDocumentFragment.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, rhs_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function fromHtml
     (html_P : str; resourceProvider_P : Optional_QtAda6_QtGui_QTextDocument)
      return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocumentFragment.Class := new QtAda6.QtGui.QTextDocumentFragment.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Method := Object_GetAttrString (Class, "fromHtml");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (html_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromHtml;
   function fromMarkdown
     (markdown_P : str; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class)
      return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocumentFragment.Class := new QtAda6.QtGui.QTextDocumentFragment.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Method := Object_GetAttrString (Class, "fromMarkdown");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (markdown_P));
      Tuple_SetItem (Args, 1, features_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromMarkdown;
   function fromPlainText (plainText_P : str) return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocumentFragment.Class := new QtAda6.QtGui.QTextDocumentFragment.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Method := Object_GetAttrString (Class, "fromPlainText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (plainText_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromPlainText;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function toHtml (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toHtml");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toHtml;
   function toMarkdown
     (self : access Inst; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toMarkdown");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, features_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toMarkdown;
   function toPlainText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPlainText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toPlainText;
   function toRawText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toRawText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toRawText;
end QtAda6.QtGui.QTextDocumentFragment;
