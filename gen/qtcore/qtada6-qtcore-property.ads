-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-property.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Property is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Object with null record;
   type CALLABLE is new Any;
   procedure Finalize (Self : in out Class);
   function Create
     (type_K_P     : Type_K_T; fget_P : CALLABLE := null; fset_P : CALLABLE := null; freset_P : CALLABLE := null;
      fdel_P       : CALLABLE := null; doc_P : str := ""; notify_P : CALLABLE := null; designable_P : bool := False;
      scriptable_P : bool     := False; stored_P : bool := False; user_P : bool := False; constant_K_P : bool := False;
      final_P      : bool     := False) return Class;
   function deleter (self : access Inst; fdel_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class;
   function getter (self : access Inst; fget_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class;
   function read (self : access Inst; fget_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class;
   function setter (self : access Inst; fset_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class;
   function write (self : access Inst; fset_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class;
end QtAda6.QtCore.Property;
