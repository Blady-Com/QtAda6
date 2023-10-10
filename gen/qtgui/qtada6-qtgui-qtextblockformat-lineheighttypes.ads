-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextblockformat-lineheighttypes.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.Enum;
package QtAda6.QtGui.QTextBlockFormat.LineHeightTypes is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.Enum.Inst with null record;
procedure Finalize (Self : in out Class);
SingleHeight:QTextBlockFormat.LineHeightTypes.Class;-- 0x0
ProportionalHeight:QTextBlockFormat.LineHeightTypes.Class;-- 0x1
FixedHeight:QTextBlockFormat.LineHeightTypes.Class;-- 0x2
MinimumHeight:QTextBlockFormat.LineHeightTypes.Class;-- 0x3
LineDistanceHeight:QTextBlockFormat.LineHeightTypes.Class;-- 0x4
end QtAda6.QtGui.QTextBlockFormat.LineHeightTypes;
