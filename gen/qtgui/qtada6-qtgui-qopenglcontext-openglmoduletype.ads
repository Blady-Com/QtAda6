-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qopenglcontext-openglmoduletype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.Enum;
package QtAda6.QtGui.QOpenGLContext.OpenGLModuleType is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.Enum.Inst with null record;
procedure Finalize (Self : in out Class);
LibGL:QOpenGLContext.OpenGLModuleType.Class;-- 0x0
LibGLES:QOpenGLContext.OpenGLModuleType.Class;-- 0x1
end QtAda6.QtGui.QOpenGLContext.OpenGLModuleType;
