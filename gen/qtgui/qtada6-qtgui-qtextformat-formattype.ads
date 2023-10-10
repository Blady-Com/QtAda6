-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextformat-formattype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.IntEnum;
package QtAda6.QtGui.QTextFormat.FormatType is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.IntEnum.Inst with null record;
procedure Finalize (Self : in out Class);
InvalidFormat:QTextFormat.FormatType.Class;-- -0x1
BlockFormat:QTextFormat.FormatType.Class;-- 0x1
CharFormat:QTextFormat.FormatType.Class;-- 0x2
ListFormat:QTextFormat.FormatType.Class;-- 0x3
FrameFormat:QTextFormat.FormatType.Class;-- 0x5
UserFormat:QTextFormat.FormatType.Class;-- 0x64
end QtAda6.QtGui.QTextFormat.FormatType;
