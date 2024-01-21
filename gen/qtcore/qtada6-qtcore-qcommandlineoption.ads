-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcommandlineoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCommandLineOption.Flag;
package QtAda6.QtCore.QCommandLineOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create (name_P : str) return Class;
   function Create
     (name_P : str; description_P : str; valueName_P : str := ""; defaultValue_P : str := "") return Class;
   function Create (names_P : SEQUENCE_str) return Class;
   function Create
     (names_P : SEQUENCE_str; description_P : str; valueName_P : str := ""; defaultValue_P : str := "") return Class;
   function Create (other_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class) return Class;
   function defaultValues (self : access Inst) return LIST_str;
   function description (self : access Inst) return str;
   function flags (self : access Inst) return access QtAda6.QtCore.QCommandLineOption.Flag.Inst'Class;
   function names (self : access Inst) return LIST_str;
   procedure setDefaultValue (self : access Inst; defaultValue_P : str);
   procedure setDefaultValues (self : access Inst; defaultValues_P : SEQUENCE_str);
   procedure setDescription (self : access Inst; description_P : str);
   procedure setFlags (self : access Inst; aflags_P : access QtAda6.QtCore.QCommandLineOption.Flag.Inst'Class);
   procedure setValueName (self : access Inst; name_P : str);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCommandLineOption.Inst'Class);
   function valueName (self : access Inst) return str;
end QtAda6.QtCore.QCommandLineOption;
