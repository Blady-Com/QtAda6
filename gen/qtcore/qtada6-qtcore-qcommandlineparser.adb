-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcommandlineparser.adb
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
with QtAda6.QtCore.QCommandLineOption;
with QtAda6.QtCore.QCoreApplication;
with QtAda6.QtCore.QCommandLineParser.OptionsAfterPositionalArgumentsMode;
with QtAda6.QtCore.QCommandLineParser.SingleDashWordOptionMode;
package body QtAda6.QtCore.QCommandLineParser is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCommandLineParser");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function addHelpOption (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QCommandLineOption.Class := new QtAda6.QtCore.QCommandLineOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "addHelpOption");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addHelpOption;
   function addOption
     (self : access Inst; commandLineOption_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, commandLineOption_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end addOption;
   function addOptions (self : access Inst; options_P : Sequence_QtAda6_QtCore_QCommandLineOption) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end addOptions;
   procedure addPositionalArgument (self : access Inst; name_P : str; description_P : str; syntax_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPositionalArgument");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (description_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (syntax_P));
      Result := Object_CallObject (Method, Args, True);
   end addPositionalArgument;
   function addVersionOption (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QCommandLineOption.Class := new QtAda6.QtCore.QCommandLineOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "addVersionOption");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addVersionOption;
   function applicationDescription (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "applicationDescription");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end applicationDescription;
   procedure clearPositionalArguments (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearPositionalArguments");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearPositionalArguments;
   function errorText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end errorText;
   function helpText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "helpText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end helpText;
   function isSet (self : access Inst; name_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSet");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSet;
   function isSet (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSet");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSet;
   function optionNames (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "optionNames");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end optionNames;
   function parse (self : access Inst; arguments_P : Sequence_str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end parse;
   function positionalArguments_F (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "positionalArguments");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end positionalArguments_F;
   procedure process (self : access Inst; app_P : access QtAda6.QtCore.QCoreApplication.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "process");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, app_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end process;
   procedure process (self : access Inst; arguments_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "process");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end process;
   procedure setApplicationDescription (self : access Inst; description_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setApplicationDescription");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (description_P));
      Result := Object_CallObject (Method, Args, True);
   end setApplicationDescription;
   procedure setOptionsAfterPositionalArgumentsMode
     (self   : access Inst;
      mode_P : access QtAda6.QtCore.QCommandLineParser.OptionsAfterPositionalArgumentsMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptionsAfterPositionalArgumentsMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setOptionsAfterPositionalArgumentsMode;
   procedure setSingleDashWordOptionMode
     (self : access Inst; parsingMode_P : access QtAda6.QtCore.QCommandLineParser.SingleDashWordOptionMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSingleDashWordOptionMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, parsingMode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setSingleDashWordOptionMode;
   procedure showHelp (self : access Inst; exitCode_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showHelp");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (exitCode_P));
      Result := Object_CallObject (Method, Args, True);
   end showHelp;
   procedure showVersion (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showVersion;
   function unknownOptionNames (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unknownOptionNames");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end unknownOptionNames;
   function value (self : access Inst; name_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end value;
   function value (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end value;
   function values (self : access Inst; name_P : str) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "values");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end values;
   function values (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return List_str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "values");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end values;
end QtAda6.QtCore.QCommandLineParser;
