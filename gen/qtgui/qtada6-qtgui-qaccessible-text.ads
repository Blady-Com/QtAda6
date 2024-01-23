-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-text.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAccessible.Text is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Name return Class;-- 0x0
   function Description return Class;-- 0x1
   function Value return Class;-- 0x2
   function Help return Class;-- 0x3
   function Accelerator return Class;-- 0x4
   function DebugDescription return Class;-- 0x5
   function UserText return Class;-- 0xffff
end QtAda6.QtGui.QAccessible.Text;
