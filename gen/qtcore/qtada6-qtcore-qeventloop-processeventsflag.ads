-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qeventloop-processeventsflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QEventLoop.ProcessEventsFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function AllEvents return Class;-- 0x0
   function ExcludeUserInputEvents return Class;-- 0x1
   function ExcludeSocketNotifiers return Class;-- 0x2
   function WaitForMoreEvents return Class;-- 0x4
   function X11ExcludeTimers return Class;-- 0x8
   function EventLoopExec return Class;-- 0x20
   function DialogExec return Class;-- 0x40
   function ApplicationExec return Class;-- 0x80
end QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
