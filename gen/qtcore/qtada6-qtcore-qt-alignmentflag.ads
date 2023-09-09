-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-alignmentflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtCore.Qt.AlignmentFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   AlignLeading         : Qt.AlignmentFlag.Class;-- 0x1
   AlignLeft            : Qt.AlignmentFlag.Class;-- 0x1
   AlignRight           : Qt.AlignmentFlag.Class;-- 0x2
   AlignTrailing        : Qt.AlignmentFlag.Class;-- 0x2
   AlignHCenter         : Qt.AlignmentFlag.Class;-- 0x4
   AlignJustify         : Qt.AlignmentFlag.Class;-- 0x8
   AlignAbsolute        : Qt.AlignmentFlag.Class;-- 0x10
   AlignHorizontal_Mask : Qt.AlignmentFlag.Class;-- 0x1f
   AlignTop             : Qt.AlignmentFlag.Class;-- 0x20
   AlignBottom          : Qt.AlignmentFlag.Class;-- 0x40
   AlignVCenter         : Qt.AlignmentFlag.Class;-- 0x80
   AlignCenter          : Qt.AlignmentFlag.Class;-- 0x84
   AlignBaseline        : Qt.AlignmentFlag.Class;-- 0x100
   AlignVertical_Mask   : Qt.AlignmentFlag.Class;-- 0x1e0
end QtAda6.QtCore.Qt.AlignmentFlag;
