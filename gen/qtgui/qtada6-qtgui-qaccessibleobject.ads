-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibleobject.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QAccessible.Text;
with QtAda6.QtGui.QAccessibleInterface;
package QtAda6.QtGui.QAccessibleObject is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtGui.QAccessibleInterface.Inst with null record;
procedure Finalize (Self : in out Class);
function Create(object_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
function childAt(self : access Inst;x_P : int;y_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
function isValid(self : access Inst) return bool;
function object(self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
function rect(self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
procedure setText(self : access Inst;t_P : access QtAda6.QtGui.QAccessible.Text.Inst'Class;text_P : str);
end QtAda6.QtGui.QAccessibleObject;
