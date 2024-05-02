-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qprocessenvironment.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QProcessEnvironment.Initialization;
package QtAda6.QtCore.QProcessEnvironment is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QProcessEnvironment.Initialization.Inst'Class) return Class;
   function Create (other_P : access QtAda6.QtCore.QProcessEnvironment.Inst'Class) return Class;
-- function Create(other_P : access QtAda6.QtCore.QProcessEnvironment.Initialization.Inst'Class) return Class;
   procedure U_copy_U;
   procedure clear (self : access Inst);
   function contains (self : access Inst; name_P : str) return bool;
   function inheritsFromParent (self : access Inst) return bool;
   procedure insert (self : access Inst; e_P : access QtAda6.QtCore.QProcessEnvironment.Inst'Class);
   procedure insert (self : access Inst; e_P : access QtAda6.QtCore.QProcessEnvironment.Initialization.Inst'Class);
   procedure insert (self : access Inst; name_P : str; value_P : str);
   function isEmpty (self : access Inst) return bool;
   function keys (self : access Inst) return LIST_str;
   procedure remove (self : access Inst; name_P : str);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QProcessEnvironment.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QProcessEnvironment.Initialization.Inst'Class);
   function systemEnvironment return access QtAda6.QtCore.QProcessEnvironment.Inst'Class;
   function toStringList (self : access Inst) return LIST_str;
   function value (self : access Inst; name_P : str; defaultValue_P : str := "") return str;
end QtAda6.QtCore.QProcessEnvironment;
