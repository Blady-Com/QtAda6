-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qopenglcontextgroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QOpenGLContext;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QOpenGLContextGroup is
type List_QtAda6_QtGui_QOpenGLContext is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QObject.Inst with null record;
procedure Finalize (Self : in out Class);
function currentContextGroup return access QtAda6.QtGui.QOpenGLContextGroup.Inst'Class;
function shares(self : access Inst) return List_QtAda6_QtGui_QOpenGLContext;
end QtAda6.QtGui.QOpenGLContextGroup;
