-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qxmlstreamattribute.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QXmlStreamAttribute is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QXmlStreamAttribute_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) return Class;
   function Create (namespaceUri_P : str; name_P : str; value_P : str) return Class;
   function Create (qualifiedName_P : str; value_P : str) return Class;
   procedure U_copy_U;
   function isDefault (self : access Inst) return bool;
   function name (self : access Inst) return str;
   function namespaceUri (self : access Inst) return str;
   function prefix (self : access Inst) return str;
   function qualifiedName (self : access Inst) return str;
   function value (self : access Inst) return str;
end QtAda6.QtCore.QXmlStreamAttribute;
