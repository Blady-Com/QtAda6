-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-toolbuttonstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.ToolButtonStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   ToolButtonIconOnly       : Qt.ToolButtonStyle.Class;-- 0x0
   ToolButtonTextOnly       : Qt.ToolButtonStyle.Class;-- 0x1
   ToolButtonTextBesideIcon : Qt.ToolButtonStyle.Class;-- 0x2
   ToolButtonTextUnderIcon  : Qt.ToolButtonStyle.Class;-- 0x3
   ToolButtonFollowStyle    : Qt.ToolButtonStyle.Class;-- 0x4
end QtAda6.QtCore.Qt.ToolButtonStyle;
