-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qprocessenvironment.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QProcessEnvironment.Initialization;
package QtAda6.QtCore.QProcessEnvironment is
   type Union_QtAda6_QtCore_QProcessEnvironment_QtAda6_QtCore_QProcessEnvironment_Initialization is access Any;
   type List_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QProcessEnvironment.Initialization.Inst'Class) return Class;
   function Create
     (other_P : Union_QtAda6_QtCore_QProcessEnvironment_QtAda6_QtCore_QProcessEnvironment_Initialization) return Class;
   procedure U_copy_U;
   procedure clear (self : access Inst);
   function contains (self : access Inst; name_P : str) return bool;
   function inheritsFromParent (self : access Inst) return bool;
   procedure insert
     (self : access Inst;
      e_P  : Union_QtAda6_QtCore_QProcessEnvironment_QtAda6_QtCore_QProcessEnvironment_Initialization);
   procedure insert (self : access Inst; name_P : str; value_P : str);
   function isEmpty (self : access Inst) return bool;
   function keys (self : access Inst) return List_str;
   procedure remove (self : access Inst; name_P : str);
   procedure swap
     (self    : access Inst;
      other_P : Union_QtAda6_QtCore_QProcessEnvironment_QtAda6_QtCore_QProcessEnvironment_Initialization);
   function systemEnvironment return access QtAda6.QtCore.QProcessEnvironment.Inst'Class;
   function toStringList (self : access Inst) return List_str;
   function value (self : access Inst; name_P : str; defaultValue_P : str) return str;
end QtAda6.QtCore.QProcessEnvironment;
