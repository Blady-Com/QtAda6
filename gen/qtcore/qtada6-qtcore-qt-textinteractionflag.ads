-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-textinteractionflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.TextInteractionFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoTextInteraction return Class;-- 0x0
   function TextSelectableByMouse return Class;-- 0x1
   function TextSelectableByKeyboard return Class;-- 0x2
   function LinksAccessibleByMouse return Class;-- 0x4
   function LinksAccessibleByKeyboard return Class;-- 0x8
   function TextBrowserInteraction return Class;-- 0xd
   function TextEditable return Class;-- 0x10
   function TextEditorInteraction return Class;-- 0x13
end QtAda6.QtCore.Qt.TextInteractionFlag;
