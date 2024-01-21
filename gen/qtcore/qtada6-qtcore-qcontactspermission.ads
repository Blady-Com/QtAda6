-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcontactspermission.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QContactsPermission.AccessMode;
package QtAda6.QtCore.QContactsPermission is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QContactsPermission.Inst'Class) return Class;
   procedure U_copy_U;
   function accessMode_F (self : access Inst) return access QtAda6.QtCore.QContactsPermission.AccessMode.Inst'Class;
   procedure setAccessMode
     (self : access Inst; mode_P : access QtAda6.QtCore.QContactsPermission.AccessMode.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QContactsPermission.Inst'Class);
end QtAda6.QtCore.QContactsPermission;
