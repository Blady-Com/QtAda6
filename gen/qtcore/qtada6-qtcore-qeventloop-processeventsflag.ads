-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qeventloop-processeventsflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QEventLoop.ProcessEventsFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   AllEvents              : QEventLoop.ProcessEventsFlag.Class;-- 0x0
   ExcludeUserInputEvents : QEventLoop.ProcessEventsFlag.Class;-- 0x1
   ExcludeSocketNotifiers : QEventLoop.ProcessEventsFlag.Class;-- 0x2
   WaitForMoreEvents      : QEventLoop.ProcessEventsFlag.Class;-- 0x4
   X11ExcludeTimers       : QEventLoop.ProcessEventsFlag.Class;-- 0x8
   EventLoopExec          : QEventLoop.ProcessEventsFlag.Class;-- 0x20
   DialogExec             : QEventLoop.ProcessEventsFlag.Class;-- 0x40
   ApplicationExec        : QEventLoop.ProcessEventsFlag.Class;-- 0x80
end QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
