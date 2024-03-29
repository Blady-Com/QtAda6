-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmimetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QMimeType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QMimeType.Inst'Class) return Class;
   procedure U_copy_U;
   function aliases (self : access Inst) return LIST_str;
   function allAncestors (self : access Inst) return LIST_str;
   function comment (self : access Inst) return str;
   function filterString (self : access Inst) return str;
   function genericIconName (self : access Inst) return str;
   function globPatterns (self : access Inst) return LIST_str;
   function iconName (self : access Inst) return str;
   function inherits (self : access Inst; mimeTypeName_P : str) return bool;
   function isDefault (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function name (self : access Inst) return str;
   function parentMimeTypes (self : access Inst) return LIST_str;
   function preferredSuffix (self : access Inst) return str;
   function suffixes (self : access Inst) return LIST_str;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QMimeType.Inst'Class);
end QtAda6.QtCore.QMimeType;
