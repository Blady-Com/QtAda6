-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtranslator.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
package body QtAda6.QtCore.QTranslator is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTranslator");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function filePath (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filePath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end filePath;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function language (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "language");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end language;
   function load (self : access Inst; data_P : bytes; directory_P : str := "") return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Dict := Dict_New;
      if directory_P /= "" then
         Dict_SetItemString (Dict, "directory", Unicode_FromString (directory_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end load;
   function load
     (self     : access Inst; filename_P : str; directory_P : str := ""; search_delimiters_P : str := "";
      suffix_P : str := "") return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filename_P));
      Dict := Dict_New;
      if directory_P /= "" then
         Dict_SetItemString (Dict, "directory", Unicode_FromString (directory_P));
      end if;
      if search_delimiters_P /= "" then
         Dict_SetItemString (Dict, "search_delimiters", Unicode_FromString (search_delimiters_P));
      end if;
      if suffix_P /= "" then
         Dict_SetItemString (Dict, "suffix", Unicode_FromString (suffix_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end load;
   function load
     (self     : access Inst; locale_P : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; filename_P : str;
      prefix_P : str := ""; directory_P : str := ""; suffix_P : str := "") return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if locale_P /= null then locale_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (filename_P));
      Dict := Dict_New;
      if prefix_P /= "" then
         Dict_SetItemString (Dict, "prefix", Unicode_FromString (prefix_P));
      end if;
      if directory_P /= "" then
         Dict_SetItemString (Dict, "directory", Unicode_FromString (directory_P));
      end if;
      if suffix_P /= "" then
         Dict_SetItemString (Dict, "suffix", Unicode_FromString (suffix_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end load;
   function translate
     (self : access Inst; context_P : bytes; sourceText_P : bytes; disambiguation_P : bytes := ""; n_P : int := 0)
      return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (context_P)));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (sourceText_P)));
      Dict := Dict_New;
      if disambiguation_P /= "" then
         Dict_SetItemString (Dict, "disambiguation", Bytes_FromString (String (disambiguation_P)));
      end if;
      if n_P /= 0 then
         Dict_SetItemString (Dict, "n", Long_FromLong (n_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end translate;
end QtAda6.QtCore.QTranslator;
