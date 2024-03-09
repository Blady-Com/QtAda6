-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextdocumentfragment.adb
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
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextCursor;
with QtAda6.QtGui.QTextDocumentFragment;
with QtAda6.QtGui.QTextDocument.MarkdownFeature;
package body QtAda6.QtGui.QTextDocumentFragment is
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
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if document_P /= null then document_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (range_K_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if range_K_P /= null then range_K_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (rhs_P : access QtAda6.QtGui.QTextDocumentFragment.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rhs_P /= null then rhs_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function fromHtml
     (html_P : str; resourceProvider_P : access QtAda6.QtGui.QTextDocument.Inst'Class := null)
      return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocumentFragment.Class := new QtAda6.QtGui.QTextDocumentFragment.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Method := Object_GetAttrString (Class, "fromHtml");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (html_P));
      Dict := Dict_New;
      if resourceProvider_P /= null then
         Dict_SetItemString (Dict, "resourceProvider", resourceProvider_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromHtml;
   function fromMarkdown
     (markdown_P : str; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class := null)
      return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocumentFragment.Class := new QtAda6.QtGui.QTextDocumentFragment.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Method := Object_GetAttrString (Class, "fromMarkdown");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (markdown_P));
      Dict := Dict_New;
      if features_P /= null then
         Dict_SetItemString (Dict, "features", features_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromMarkdown;
   function fromPlainText (plainText_P : str) return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocumentFragment.Class := new QtAda6.QtGui.QTextDocumentFragment.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentFragment");
      Method := Object_GetAttrString (Class, "fromPlainText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (plainText_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromPlainText;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function toHtml (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toHtml");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toHtml;
   function toMarkdown
     (self : access Inst; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toMarkdown");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if features_P /= null then
         Dict_SetItemString (Dict, "features", features_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toMarkdown;
   function toPlainText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPlainText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toPlainText;
   function toRawText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toRawText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toRawText;
end QtAda6.QtGui.QTextDocumentFragment;
