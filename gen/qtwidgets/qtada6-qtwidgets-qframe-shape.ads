-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qframe-shape.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QFrame.Shape is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoFrame     : QFrame.Shape.Class;-- 0x0
   Box         : QFrame.Shape.Class;-- 0x1
   Panel       : QFrame.Shape.Class;-- 0x2
   WinPanel    : QFrame.Shape.Class;-- 0x3
   HLine       : QFrame.Shape.Class;-- 0x4
   VLine       : QFrame.Shape.Class;-- 0x5
   StyledPanel : QFrame.Shape.Class;-- 0x6
end QtAda6.QtWidgets.QFrame.Shape;
