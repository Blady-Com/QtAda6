-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtranslator.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QLocale;
with QtAda6.QtCore.QLocale.Language;
package body QtAda6.QtCore.QTranslator is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTranslator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function filePath (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filePath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end filePath;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function language (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "language");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end language;
   function load (self : access Inst; data_P : bytes; directory_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Unicode_FromString (directory_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load;
   function load
     (self : access Inst; filename_P : str; directory_P : str; search_delimiters_P : str; suffix_P : str) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (filename_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (directory_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (search_delimiters_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (suffix_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load;
   function load
     (self     : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; filename_P : str;
      prefix_P : str; directory_P : str; suffix_P : str) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Unicode_FromString (filename_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (prefix_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (directory_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (suffix_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load;
   function translate
     (self : access Inst; context_P : bytes; sourceText_P : bytes; disambiguation_P : Optional_bytes; n_P : int)
      return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (context_P)));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (sourceText_P)));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end translate;
end QtAda6.QtCore.QTranslator;
