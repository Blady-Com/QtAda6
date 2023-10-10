-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputmethodevent-attributetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.Enum;
package QtAda6.QtGui.QInputMethodEvent.AttributeType is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.Enum.Inst with null record;
procedure Finalize (Self : in out Class);
TextFormat:QInputMethodEvent.AttributeType.Class;-- 0x0
Cursor:QInputMethodEvent.AttributeType.Class;-- 0x1
Language:QInputMethodEvent.AttributeType.Class;-- 0x2
Ruby:QInputMethodEvent.AttributeType.Class;-- 0x3
Selection:QInputMethodEvent.AttributeType.Class;-- 0x4
end QtAda6.QtGui.QInputMethodEvent.AttributeType;
