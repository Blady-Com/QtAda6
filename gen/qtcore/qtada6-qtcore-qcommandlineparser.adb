-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcommandlineparser.adb
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
with QtAda6.QtCore.QCommandLineOption;
with QtAda6.QtCore.QCoreApplication;
with QtAda6.QtCore.QCommandLineParser.OptionsAfterPositionalArgumentsMode;
with QtAda6.QtCore.QCommandLineParser.SingleDashWordOptionMode;
package body QtAda6.QtCore.QCommandLineParser is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCommandLineParser");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function addHelpOption (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCommandLineOption.Class := new QtAda6.QtCore.QCommandLineOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "addHelpOption");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addHelpOption;
   function addOption
     (self : access Inst; commandLineOption_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if commandLineOption_P /= null then commandLineOption_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end addOption;
   function addOptions (self : access Inst; options_P : SEQUENCE_QtAda6_QtCore_QCommandLineOption) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addOptions");
      List   := List_New (options_P'Length);
      for ind in options_P'Range loop
         List_SetItem
           (List, ssize_t (ind - options_P'First),
            (if options_P (ind) /= null then options_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end addOptions;
   procedure addPositionalArgument (self : access Inst; name_P : str; description_P : str; syntax_P : str := "") is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPositionalArgument");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (description_P));
      Dict := Dict_New;
      if syntax_P /= "" then
         Dict_SetItemString (Dict, "syntax", Unicode_FromString (syntax_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addPositionalArgument;
   function addVersionOption (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCommandLineOption.Class := new QtAda6.QtCore.QCommandLineOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "addVersionOption");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addVersionOption;
   function applicationDescription (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "applicationDescription");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end applicationDescription;
   procedure clearPositionalArguments (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearPositionalArguments");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearPositionalArguments;
   function errorText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end errorText;
   function helpText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "helpText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end helpText;
   function isSet (self : access Inst; name_P : str) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSet");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSet;
   function isSet (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSet");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSet;
   function optionNames (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "optionNames");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end optionNames;
   function parse (self : access Inst; arguments_P : SEQUENCE_str) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parse");
      List   := List_New (arguments_P'Length);
      for ind in arguments_P'Range loop
         List_SetItem (List, ssize_t (ind - arguments_P'First), Unicode_FromString (arguments_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end parse;
   function positionalArguments (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "positionalArguments");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end positionalArguments;
   procedure process (self : access Inst; app_P : access QtAda6.QtCore.QCoreApplication.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "process");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if app_P /= null then app_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end process;
   procedure process (self : access Inst; arguments_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "process");
      List   := List_New (arguments_P'Length);
      for ind in arguments_P'Range loop
         List_SetItem (List, ssize_t (ind - arguments_P'First), Unicode_FromString (arguments_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end process;
   procedure setApplicationDescription (self : access Inst; description_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setApplicationDescription");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (description_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setApplicationDescription;
   procedure setOptionsAfterPositionalArgumentsMode
     (self   : access Inst;
      mode_P : access QtAda6.QtCore.QCommandLineParser.OptionsAfterPositionalArgumentsMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptionsAfterPositionalArgumentsMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOptionsAfterPositionalArgumentsMode;
   procedure setSingleDashWordOptionMode
     (self : access Inst; parsingMode_P : access QtAda6.QtCore.QCommandLineParser.SingleDashWordOptionMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSingleDashWordOptionMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parsingMode_P /= null then parsingMode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSingleDashWordOptionMode;
   procedure showHelp (self : access Inst; exitCode_P : int := 0) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showHelp");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if exitCode_P /= 0 then
         Dict_SetItemString (Dict, "exitCode", Long_FromLong (exitCode_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showHelp;
   procedure showVersion (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showVersion");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showVersion;
   function unknownOptionNames (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unknownOptionNames");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end unknownOptionNames;
   function value (self : access Inst; name_P : str) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end value;
   function value (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end value;
   function values (self : access Inst; name_P : str) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "values");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end values;
   function values (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return LIST_str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "values");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end values;
end QtAda6.QtCore.QCommandLineParser;
