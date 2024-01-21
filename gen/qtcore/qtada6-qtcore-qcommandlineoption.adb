-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcommandlineoption.adb
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
with QtAda6.QtCore.QCommandLineOption.Flag;
package body QtAda6.QtCore.QCommandLineOption is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (name_P : str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCommandLineOption");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (name_P : str; description_P : str; valueName_P : str := ""; defaultValue_P : str := "") return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCommandLineOption");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (description_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (valueName_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (defaultValue_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (names_P : SEQUENCE_str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCommandLineOption");
      List  := List_New (names_P'Length);
      for ind in names_P'Range loop
         List_SetItem (List, ssize_t (ind - names_P'First), Unicode_FromString (names_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (names_P : SEQUENCE_str; description_P : str; valueName_P : str := ""; defaultValue_P : str := "") return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCommandLineOption");
      List  := List_New (names_P'Length);
      for ind in names_P'Range loop
         List_SetItem (List, ssize_t (ind - names_P'First), Unicode_FromString (names_P (ind)));
      end loop;
      Args := Tuple_New (4);
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, Unicode_FromString (description_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (valueName_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (defaultValue_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCommandLineOption");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function defaultValues (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "defaultValues");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end defaultValues;
   function description (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "description");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end description;
   function flags (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Flag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QCommandLineOption.Flag.Class := new QtAda6.QtCore.QCommandLineOption.Flag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function names (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "names");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end names;
   procedure setDefaultValue (self : access Inst; defaultValue_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (defaultValue_P));
      Result := Object_CallObject (Method, Args, True);
   end setDefaultValue;
   procedure setDefaultValues (self : access Inst; defaultValues_P : SEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultValues");
      List   := List_New (defaultValues_P'Length);
      for ind in defaultValues_P'Range loop
         List_SetItem (List, ssize_t (ind - defaultValues_P'First), Unicode_FromString (defaultValues_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end setDefaultValues;
   procedure setDescription (self : access Inst; description_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDescription");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (description_P));
      Result := Object_CallObject (Method, Args, True);
   end setDescription;
   procedure setFlags (self : access Inst; aflags_P : access QtAda6.QtCore.QCommandLineOption.Flag.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if aflags_P /= null then aflags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFlags;
   procedure setValueName (self : access Inst; name_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setValueName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end setValueName;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function valueName (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valueName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end valueName;
end QtAda6.QtCore.QCommandLineOption;
