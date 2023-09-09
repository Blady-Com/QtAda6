-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qthread-priority.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QThread.Priority is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   IdlePriority         : QThread.Priority.Class;-- 0x0
   LowestPriority       : QThread.Priority.Class;-- 0x1
   LowPriority          : QThread.Priority.Class;-- 0x2
   NormalPriority       : QThread.Priority.Class;-- 0x3
   HighPriority         : QThread.Priority.Class;-- 0x4
   HighestPriority      : QThread.Priority.Class;-- 0x5
   TimeCriticalPriority : QThread.Priority.Class;-- 0x6
   InheritPriority      : QThread.Priority.Class;-- 0x7
end QtAda6.QtCore.QThread.Priority;
