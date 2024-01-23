-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsessionmanager.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QSessionManager.RestartHint;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QSessionManager is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type LIST_str is array (Positive range <>) of str;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function allowsErrorInteraction (self : access Inst) return bool;
   function allowsInteraction (self : access Inst) return bool;
   procedure cancel (self : access Inst);
   function discardCommand (self : access Inst) return LIST_str;
   function isPhase2 (self : access Inst) return bool;
   procedure release (self : access Inst);
   procedure requestPhase2 (self : access Inst);
   function restartCommand (self : access Inst) return LIST_str;
   function restartHint_F (self : access Inst) return access QtAda6.QtGui.QSessionManager.RestartHint.Inst'Class;
   function sessionId (self : access Inst) return str;
   function sessionKey (self : access Inst) return str;
   procedure setDiscardCommand (self : access Inst; arg_1_P : SEQUENCE_str);
   procedure setManagerProperty (self : access Inst; name_P : str; value_P : str);
   procedure setManagerProperty (self : access Inst; name_P : str; value_P : SEQUENCE_str);
   procedure setRestartCommand (self : access Inst; arg_1_P : SEQUENCE_str);
   procedure setRestartHint (self : access Inst; arg_1_P : access QtAda6.QtGui.QSessionManager.RestartHint.Inst'Class);
end QtAda6.QtGui.QSessionManager;
