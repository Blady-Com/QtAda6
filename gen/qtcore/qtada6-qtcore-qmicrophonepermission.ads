-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmicrophonepermission.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QMicrophonePermission is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QMicrophonePermission.Inst'Class) return Class;
   procedure U_copy_U;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QMicrophonePermission.Inst'Class);
end QtAda6.QtCore.QMicrophonePermission;
