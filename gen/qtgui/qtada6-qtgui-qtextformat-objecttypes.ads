-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextformat-objecttypes.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.IntEnum;
package QtAda6.QtGui.QTextFormat.ObjectTypes is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.IntEnum.Inst with null record;
procedure Finalize (Self : in out Class);
NoObject:QTextFormat.ObjectTypes.Class;-- 0x0
ImageObject:QTextFormat.ObjectTypes.Class;-- 0x1
TableObject:QTextFormat.ObjectTypes.Class;-- 0x2
TableCellObject:QTextFormat.ObjectTypes.Class;-- 0x3
UserObject:QTextFormat.ObjectTypes.Class;-- 0x1000
end QtAda6.QtGui.QTextFormat.ObjectTypes;
