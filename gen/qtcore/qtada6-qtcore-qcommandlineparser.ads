-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcommandlineparser.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCommandLineOption;
limited with QtAda6.QtCore.QCoreApplication;
limited with QtAda6.QtCore.QCommandLineParser.OptionsAfterPositionalArgumentsMode;
limited with QtAda6.QtCore.QCommandLineParser.SingleDashWordOptionMode;
package QtAda6.QtCore.QCommandLineParser is
   type Sequence_QtAda6_QtCore_QCommandLineOption is access Any;
   type List_str is access Any;
   type Sequence_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function addHelpOption (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Inst'Class;
   function addOption
     (self : access Inst; commandLineOption_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return bool;
   function addOptions (self : access Inst; options_P : Sequence_QtAda6_QtCore_QCommandLineOption) return bool;
   procedure addPositionalArgument (self : access Inst; name_P : str; description_P : str; syntax_P : str);
   function addVersionOption (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Inst'Class;
   function applicationDescription (self : access Inst) return str;
   procedure clearPositionalArguments (self : access Inst);
   function errorText (self : access Inst) return str;
   function helpText (self : access Inst) return str;
   function isSet (self : access Inst; name_P : str) return bool;
   function isSet (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return bool;
   function optionNames (self : access Inst) return List_str;
   function parse (self : access Inst; arguments_P : Sequence_str) return bool;
   function positionalArguments_F (self : access Inst) return List_str;
   procedure process (self : access Inst; app_P : access QtAda6.QtCore.QCoreApplication.Inst'Class);
   procedure process (self : access Inst; arguments_P : Sequence_str);
   procedure setApplicationDescription (self : access Inst; description_P : str);
   procedure setOptionsAfterPositionalArgumentsMode
     (self   : access Inst;
      mode_P : access QtAda6.QtCore.QCommandLineParser.OptionsAfterPositionalArgumentsMode.Inst'Class);
   procedure setSingleDashWordOptionMode
     (self : access Inst; parsingMode_P : access QtAda6.QtCore.QCommandLineParser.SingleDashWordOptionMode.Inst'Class);
   procedure showHelp (self : access Inst; exitCode_P : int);
   procedure showVersion (self : access Inst);
   function unknownOptionNames (self : access Inst) return List_str;
   function value (self : access Inst; name_P : str) return str;
   function value (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return str;
   function values (self : access Inst; name_P : str) return List_str;
   function values (self : access Inst; option_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return List_str;
end QtAda6.QtCore.QCommandLineParser;
