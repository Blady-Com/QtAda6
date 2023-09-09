-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-property.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Property is
   type Optional_Callable is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Object with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (type_K_P : type_K_T; fget_P : Optional_Callable; fset_P : Optional_Callable; freset_P : Optional_Callable;
      fdel_P   : Optional_Callable; doc_P : str; notify_P : Optional_Callable; designable_P : bool; scriptable_P : bool;
      stored_P : bool; user_P : bool; constant_K_P : bool; final_P : bool) return Class;
   function deleter (self : access Inst; fdel_P : Callable) return access QtAda6.QtCore.Property.Inst'Class;
   function getter (self : access Inst; fget_P : Callable) return access QtAda6.QtCore.Property.Inst'Class;
   function read (self : access Inst; fget_P : Callable) return access QtAda6.QtCore.Property.Inst'Class;
   function setter (self : access Inst; fset_P : Callable) return access QtAda6.QtCore.Property.Inst'Class;
   function write (self : access Inst; fset_P : Callable) return access QtAda6.QtCore.Property.Inst'Class;
end QtAda6.QtCore.Property;
