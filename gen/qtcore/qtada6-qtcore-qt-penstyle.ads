-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-penstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.PenStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoPen          : Qt.PenStyle.Class;-- 0x0
   SolidLine      : Qt.PenStyle.Class;-- 0x1
   DashLine       : Qt.PenStyle.Class;-- 0x2
   DotLine        : Qt.PenStyle.Class;-- 0x3
   DashDotLine    : Qt.PenStyle.Class;-- 0x4
   DashDotDotLine : Qt.PenStyle.Class;-- 0x5
   CustomDashLine : Qt.PenStyle.Class;-- 0x6
   MPenStyle      : Qt.PenStyle.Class;-- 0xf
end QtAda6.QtCore.Qt.PenStyle;
