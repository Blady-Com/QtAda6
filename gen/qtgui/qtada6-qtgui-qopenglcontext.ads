-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qopenglcontext.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QOpenGLExtraFunctions;
limited with QtAda6.QtGui.QSurfaceFormat;
limited with QtAda6.QtGui.QOpenGLFunctions;
limited with QtAda6.QtGui.QSurface;
limited with QtAda6.QtGui.QOpenGLContext.OpenGLModuleType;
limited with QtAda6.QtGui.QScreen;
limited with QtAda6.QtGui.QSurfaceFormat.FormatOption;
limited with QtAda6.QtGui.QOpenGLContextGroup;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QOpenGLContext is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype SET_QtAda6_QtCore_QByteArray is QtAda6.QtCore.QByteArray.Class_Array;
   procedure Finalize (Self : in out Class);
   function aboutToBeDestroyed
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- aboutToBeDestroyed()
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function areSharing
     (first_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class; second_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class)
      return bool;
   function create (self : access Inst) return bool;
   function currentContext return access QtAda6.QtGui.QOpenGLContext.Inst'Class;
   function defaultFramebufferObject (self : access Inst) return int;
   procedure doneCurrent (self : access Inst);
   function extensions (self : access Inst) return SET_QtAda6_QtCore_QByteArray;
   function extraFunctions (self : access Inst) return access QtAda6.QtGui.QOpenGLExtraFunctions.Inst'Class;
   function format (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class;
   function functions (self : access Inst) return access QtAda6.QtGui.QOpenGLFunctions.Inst'Class;
   function getProcAddress (self : access Inst; procName_P : bytes) return int;
   function getProcAddress (self : access Inst; procName_P : access QtAda6.QtCore.QByteArray.Inst'Class) return int;
-- function getProcAddress(self : access Inst;procName_P : bytes) return int;
   function globalShareContext return access QtAda6.QtGui.QOpenGLContext.Inst'Class;
   function hasExtension (self : access Inst; extension_P : access QtAda6.QtCore.QByteArray.Inst'Class) return bool;
   function hasExtension (self : access Inst; extension_P : bytes) return bool;
   function isOpenGLES (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function makeCurrent (self : access Inst; surface_P : access QtAda6.QtGui.QSurface.Inst'Class) return bool;
   function openGLModuleType_F return access QtAda6.QtGui.QOpenGLContext.OpenGLModuleType.Inst'Class;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int;
   function screen (self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class;
   procedure setFormat (self : access Inst; format_P : access QtAda6.QtGui.QSurfaceFormat.Inst'Class);
   procedure setFormat (self : access Inst; format_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class);
   procedure setScreen (self : access Inst; screen_P : access QtAda6.QtGui.QScreen.Inst'Class);
   procedure setShareContext (self : access Inst; shareContext_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class);
   function shareContext (self : access Inst) return access QtAda6.QtGui.QOpenGLContext.Inst'Class;
   function shareGroup (self : access Inst) return access QtAda6.QtGui.QOpenGLContextGroup.Inst'Class;
   function supportsThreadedOpenGL return bool;
   function surface (self : access Inst) return access QtAda6.QtGui.QSurface.Inst'Class;
   procedure swapBuffers (self : access Inst; surface_P : access QtAda6.QtGui.QSurface.Inst'Class);
end QtAda6.QtGui.QOpenGLContext;
