-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qoffscreensurface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QScreen;
limited with QtAda6.QtGui.QSurfaceFormat;
limited with QtAda6.QtGui.QSurfaceFormat.FormatOption;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QSurface.SurfaceType;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QSurface;
package QtAda6.QtGui.QOffscreenSurface is
type ClassVar_Signal is access Any;
type Optional_QtAda6_QtGui_QScreen is access Any;
type Optional_QtAda6_QtCore_QObject is access Any;
type Union_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QObject.Inst
--  and QtAda6.QtGui.QSurface.Inst
 with null record;
procedure Finalize (Self : in out Class);
screenChanged:ClassVar_Signal;-- screenChanged(QScreen*)
function Create(screen_P : Optional_QtAda6_QtGui_QScreen;parent_P : Optional_QtAda6_QtCore_QObject) return Class;
procedure create(self : access Inst);
procedure destroy(self : access Inst);
function format(self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class;
function isValid(self : access Inst) return bool;
function requestedFormat(self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class;
function resolveInterface(self : access Inst;name_P : bytes;revision_P : int) return int;
function screen(self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class;
procedure setFormat(self : access Inst;format_P : Union_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption);
procedure setScreen(self : access Inst;screen_P : access QtAda6.QtGui.QScreen.Inst'Class);
function size(self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
function surfaceHandle(self : access Inst) return int;
function surfaceType(self : access Inst) return access QtAda6.QtGui.QSurface.SurfaceType.Inst'Class;
end QtAda6.QtGui.QOffscreenSurface;
