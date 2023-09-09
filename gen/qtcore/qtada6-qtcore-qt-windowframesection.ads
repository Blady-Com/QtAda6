-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-windowframesection.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.WindowFrameSection is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoSection          : Qt.WindowFrameSection.Class;-- 0x0
   LeftSection        : Qt.WindowFrameSection.Class;-- 0x1
   TopLeftSection     : Qt.WindowFrameSection.Class;-- 0x2
   TopSection         : Qt.WindowFrameSection.Class;-- 0x3
   TopRightSection    : Qt.WindowFrameSection.Class;-- 0x4
   RightSection       : Qt.WindowFrameSection.Class;-- 0x5
   BottomRightSection : Qt.WindowFrameSection.Class;-- 0x6
   BottomSection      : Qt.WindowFrameSection.Class;-- 0x7
   BottomLeftSection  : Qt.WindowFrameSection.Class;-- 0x8
   TitleBarArea       : Qt.WindowFrameSection.Class;-- 0x9
end QtAda6.QtCore.Qt.WindowFrameSection;
