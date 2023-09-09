-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsignalblocker.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QSignalBlocker is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (o_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function U_enter_U (self : access Inst) return access QtAda6.QtCore.QSignalBlocker.Inst'Class;
   procedure U_exit_U (self : access Inst; arg_1_P : Object; arg_2_P : Object; arg_3_P : Object);
   procedure reblock (self : access Inst);
   procedure unblock (self : access Inst);
end QtAda6.QtCore.QSignalBlocker;
