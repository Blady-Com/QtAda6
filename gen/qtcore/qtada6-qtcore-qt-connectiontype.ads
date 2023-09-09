-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-connectiontype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.ConnectionType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   AutoConnection           : Qt.ConnectionType.Class;-- 0x0
   DirectConnection         : Qt.ConnectionType.Class;-- 0x1
   QueuedConnection         : Qt.ConnectionType.Class;-- 0x2
   BlockingQueuedConnection : Qt.ConnectionType.Class;-- 0x3
   UniqueConnection         : Qt.ConnectionType.Class;-- 0x80
   SingleShotConnection     : Qt.ConnectionType.Class;-- 0x100
end QtAda6.QtCore.Qt.ConnectionType;
