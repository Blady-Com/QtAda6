-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsurfaceformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QSurfaceFormat.FormatOption;
limited with QtAda6.QtGui.QColorSpace;
limited with QtAda6.QtGui.QSurfaceFormat.OpenGLContextProfile;
limited with QtAda6.QtGui.QSurfaceFormat.RenderableType;
limited with QtAda6.QtGui.QSurfaceFormat.ColorSpace;
limited with QtAda6.QtGui.QColorSpace.NamedColorSpace;
limited with QtAda6.QtGui.QSurfaceFormat.SwapBehavior;
package QtAda6.QtGui.QSurfaceFormat is
   type Union_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption is access Any;
   type Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace is access Any;
   type Tuple_int_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (options_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class) return Class;
   function Create (other_P : Union_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption) return Class;
   procedure U_copy_U;
   function alphaBufferSize (self : access Inst) return int;
   function blueBufferSize (self : access Inst) return int;
   function colorSpace_F (self : access Inst) return access QtAda6.QtGui.QColorSpace.Inst'Class;
   function defaultFormat return access QtAda6.QtGui.QSurfaceFormat.Inst'Class;
   function depthBufferSize (self : access Inst) return int;
   function greenBufferSize (self : access Inst) return int;
   function hasAlpha (self : access Inst) return bool;
   function majorVersion (self : access Inst) return int;
   function minorVersion (self : access Inst) return int;
   function options (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class;
   function profile_F (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.OpenGLContextProfile.Inst'Class;
   function redBufferSize (self : access Inst) return int;
   function renderableType_F (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.RenderableType.Inst'Class;
   function samples (self : access Inst) return int;
   procedure setAlphaBufferSize (self : access Inst; size_P : int);
   procedure setBlueBufferSize (self : access Inst; size_P : int);
   procedure setColorSpace
     (self : access Inst; colorSpace_P : access QtAda6.QtGui.QSurfaceFormat.ColorSpace.Inst'Class);
   procedure setColorSpace
     (self : access Inst; colorSpace_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace);
   procedure setDefaultFormat (format_P : Union_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption);
   procedure setDepthBufferSize (self : access Inst; size_P : int);
   procedure setGreenBufferSize (self : access Inst; size_P : int);
   procedure setMajorVersion (self : access Inst; majorVersion_P : int);
   procedure setMinorVersion (self : access Inst; minorVersion_P : int);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class; on_P : bool);
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class);
   procedure setProfile
     (self : access Inst; profile_P : access QtAda6.QtGui.QSurfaceFormat.OpenGLContextProfile.Inst'Class);
   procedure setRedBufferSize (self : access Inst; size_P : int);
   procedure setRenderableType
     (self : access Inst; type_K_P : access QtAda6.QtGui.QSurfaceFormat.RenderableType.Inst'Class);
   procedure setSamples (self : access Inst; numSamples_P : int);
   procedure setStencilBufferSize (self : access Inst; size_P : int);
   procedure setStereo (self : access Inst; enable_P : bool);
   procedure setSwapBehavior
     (self : access Inst; behavior_P : access QtAda6.QtGui.QSurfaceFormat.SwapBehavior.Inst'Class);
   procedure setSwapInterval (self : access Inst; interval_P : int);
   procedure setVersion (self : access Inst; major_P : int; minor_P : int);
   function stencilBufferSize (self : access Inst) return int;
   function stereo (self : access Inst) return bool;
   function swapBehavior_F (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.SwapBehavior.Inst'Class;
   function swapInterval (self : access Inst) return int;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class) return bool;
   function version (self : access Inst) return Tuple_int_int;
end QtAda6.QtGui.QSurfaceFormat;
