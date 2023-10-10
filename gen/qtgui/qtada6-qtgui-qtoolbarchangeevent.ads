-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtoolbarchangeevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QToolBarChangeEvent is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
procedure Finalize (Self : in out Class);
function Create(arg_1_P : access QtAda6.QtGui.QToolBarChangeEvent.Inst'Class) return Class;
function Create(t_P : bool) return Class;
function clone(self : access Inst) return access QtAda6.QtGui.QToolBarChangeEvent.Inst'Class;
function toggle(self : access Inst) return bool;
end QtAda6.QtGui.QToolBarChangeEvent;
