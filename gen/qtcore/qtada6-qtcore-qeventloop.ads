-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qeventloop.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QEventLoop is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function event_F (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function exec
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) return int;
   function exec_U
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) return int;
   procedure exit_K (self : access Inst; returnCode_P : int);
   function isRunning (self : access Inst) return bool;
   procedure processEvents_F
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class; maximumTime_P : int);
   function processEvents_F
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) return bool;
   procedure quit (self : access Inst);
   procedure wakeUp (self : access Inst);
end QtAda6.QtCore.QEventLoop;
