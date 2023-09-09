-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-windowstate.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.WindowState is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   WindowNoState    : Qt.WindowState.Class;-- 0x0
   WindowMinimized  : Qt.WindowState.Class;-- 0x1
   WindowMaximized  : Qt.WindowState.Class;-- 0x2
   WindowFullScreen : Qt.WindowState.Class;-- 0x4
   WindowActive     : Qt.WindowState.Class;-- 0x8
end QtAda6.QtCore.Qt.WindowState;
