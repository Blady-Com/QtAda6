-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfutureinterfacebase-state.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QFutureInterfaceBase.State is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoState return Class;-- 0x0
   function Running return Class;-- 0x1
   function Started return Class;-- 0x2
   function Finished return Class;-- 0x4
   function Canceled return Class;-- 0x8
   function Suspending return Class;-- 0x10
   function Suspended return Class;-- 0x20
   function Throttled return Class;-- 0x40
   function Pending return Class;-- 0x80
end QtAda6.QtCore.QFutureInterfaceBase.State;
