-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qvalidator-state.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.Enum;
package QtAda6.QtGui.QValidator.State is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.Enum.Inst with null record;
procedure Finalize (Self : in out Class);
Invalid:QValidator.State.Class;-- 0x0
Intermediate:QValidator.State.Class;-- 0x1
Acceptable:QValidator.State.Class;-- 0x2
end QtAda6.QtGui.QValidator.State;
