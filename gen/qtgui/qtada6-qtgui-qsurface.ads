-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsurface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QSurface.SurfaceClass;
limited with QtAda6.QtGui.QSurfaceFormat;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QSurface.SurfaceType;
package QtAda6.QtGui.QSurface is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (type_K_P : access QtAda6.QtGui.QSurface.SurfaceClass.Inst'Class) return Class;
   function format (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function supportsOpenGL (self : access Inst) return bool;
   function surfaceClass_F (self : access Inst) return access QtAda6.QtGui.QSurface.SurfaceClass.Inst'Class;
   function surfaceHandle (self : access Inst) return int;
   function surfaceType_F (self : access Inst) return access QtAda6.QtGui.QSurface.SurfaceType.Inst'Class;
end QtAda6.QtGui.QSurface;
