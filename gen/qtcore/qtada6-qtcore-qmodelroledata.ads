-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmodelroledata.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QModelRoleData is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (QModelRoleData_P : access QtAda6.QtCore.QModelRoleData.Inst'Class) return Class;
   function Create (role_P : int) return Class;
   procedure U_copy_U;
   procedure clearData (self : access Inst);
   function data (self : access Inst) return Any;
   function role (self : access Inst) return int;
end QtAda6.QtCore.QModelRoleData;
