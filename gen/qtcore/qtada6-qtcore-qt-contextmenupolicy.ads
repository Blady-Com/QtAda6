-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-contextmenupolicy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.ContextMenuPolicy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoContextMenu return Class;-- 0x0
   function DefaultContextMenu return Class;-- 0x1
   function ActionsContextMenu return Class;-- 0x2
   function CustomContextMenu return Class;-- 0x3
   function PreventContextMenu return Class;-- 0x4
end QtAda6.QtCore.Qt.ContextMenuPolicy;
