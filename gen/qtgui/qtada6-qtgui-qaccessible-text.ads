-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-text.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QAccessible.Text is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Name             : QAccessible.Text.Class;-- 0x0
   Description      : QAccessible.Text.Class;-- 0x1
   Value            : QAccessible.Text.Class;-- 0x2
   Help             : QAccessible.Text.Class;-- 0x3
   Accelerator      : QAccessible.Text.Class;-- 0x4
   DebugDescription : QAccessible.Text.Class;-- 0x5
   UserText         : QAccessible.Text.Class;-- 0xffff
end QtAda6.QtGui.QAccessible.Text;
