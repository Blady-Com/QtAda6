-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qpermission.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.PermissionStatus;
limited with QtAda6.QtCore.QMetaType;
package QtAda6.QtCore.QPermission is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QPermission_P : access QtAda6.QtCore.QPermission.Inst'Class) return Class;
   procedure U_copy_U;
   function status (self : access Inst) return access QtAda6.QtCore.Qt.PermissionStatus.Inst'Class;
   function type_K (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class;
end QtAda6.QtCore.QPermission;
