-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcommandlineoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCommandLineOption.Flag;
package QtAda6.QtCore.QCommandLineOption is
   type Sequence_str is access Any;
   type List_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (name_P : str) return Class;
   function Create (name_P : str; description_P : str; valueName_P : str; defaultValue_P : str) return Class;
   function Create (names_P : Sequence_str) return Class;
   function Create (names_P : Sequence_str; description_P : str; valueName_P : str; defaultValue_P : str) return Class;
   function Create (other_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return Class;
   function defaultValues (self : access Inst) return List_str;
   function description (self : access Inst) return str;
   function flags (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Flag.Inst'Class;
   function names (self : access Inst) return List_str;
   procedure setDefaultValue (self : access Inst; defaultValue_P : str);
   procedure setDefaultValues (self : access Inst; defaultValues_P : Sequence_str);
   procedure setDescription (self : access Inst; description_P : str);
   procedure setFlags (self : access Inst; aflags_P : access QtAda6.QtCore.QCommandLineOption.Flag.Inst'Class);
   procedure setValueName (self : access Inst; name_P : str);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class);
   function valueName (self : access Inst) return str;
end QtAda6.QtCore.QCommandLineOption;
