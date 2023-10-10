-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qsurfaceformat.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QSurfaceFormat.FormatOption;
with QtAda6.QtGui.QColorSpace;
with QtAda6.QtGui.QSurfaceFormat.OpenGLContextProfile;
with QtAda6.QtGui.QSurfaceFormat.RenderableType;
with QtAda6.QtGui.QSurfaceFormat.ColorSpace;
with QtAda6.QtGui.QColorSpace.NamedColorSpace;
with QtAda6.QtGui.QSurfaceFormat.SwapBehavior;
package body QtAda6.QtGui.QSurfaceFormat is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (options_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : Union_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function alphaBufferSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alphaBufferSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end alphaBufferSize;
   function blueBufferSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blueBufferSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end blueBufferSize;
   function colorSpace_F (self : access Inst) return access QtAda6.QtGui.QColorSpace.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QColorSpace.Class := new QtAda6.QtGui.QColorSpace.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "colorSpace");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end colorSpace_F;
   function defaultFormat return access QtAda6.QtGui.QSurfaceFormat.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QSurfaceFormat.Class := new QtAda6.QtGui.QSurfaceFormat.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Method           := Object_GetAttrString (Class, "defaultFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultFormat;
   function depthBufferSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "depthBufferSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end depthBufferSize;
   function greenBufferSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "greenBufferSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end greenBufferSize;
   function hasAlpha (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAlpha");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasAlpha;
   function majorVersion (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "majorVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end majorVersion;
   function minorVersion (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minorVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end minorVersion;
   function options (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QSurfaceFormat.FormatOption.Class :=
        new QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "options");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end options;
   function profile_F (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.OpenGLContextProfile.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QSurfaceFormat.OpenGLContextProfile.Class :=
        new QtAda6.QtGui.QSurfaceFormat.OpenGLContextProfile.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "profile");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end profile_F;
   function redBufferSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redBufferSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end redBufferSize;
   function renderableType_F (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.RenderableType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QSurfaceFormat.RenderableType.Class :=
        new QtAda6.QtGui.QSurfaceFormat.RenderableType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "renderableType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end renderableType_F;
   function samples (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "samples");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end samples;
   procedure setAlphaBufferSize (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlphaBufferSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setAlphaBufferSize;
   procedure setBlueBufferSize (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBlueBufferSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setBlueBufferSize;
   procedure setColorSpace (self : access Inst; colorSpace_P : access QtAda6.QtGui.QSurfaceFormat.ColorSpace.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColorSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, colorSpace_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setColorSpace;
   procedure setColorSpace
     (self : access Inst; colorSpace_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColorSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setColorSpace;
   procedure setDefaultFormat (format_P : Union_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Method := Object_GetAttrString (Class, "setDefaultFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setDefaultFormat;
   procedure setDepthBufferSize (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDepthBufferSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setDepthBufferSize;
   procedure setGreenBufferSize (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGreenBufferSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setGreenBufferSize;
   procedure setMajorVersion (self : access Inst; majorVersion_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMajorVersion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (majorVersion_P));
      Result := Object_CallObject (Method, Args, True);
   end setMajorVersion;
   procedure setMinorVersion (self : access Inst; minorVersion_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinorVersion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (minorVersion_P));
      Result := Object_CallObject (Method, Args, True);
   end setMinorVersion;
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class; on_P : bool)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOption");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setOption;
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setOptions;
   procedure setProfile
     (self : access Inst; profile_P : access QtAda6.QtGui.QSurfaceFormat.OpenGLContextProfile.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProfile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, profile_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setProfile;
   procedure setRedBufferSize (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRedBufferSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setRedBufferSize;
   procedure setRenderableType
     (self : access Inst; type_K_P : access QtAda6.QtGui.QSurfaceFormat.RenderableType.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRenderableType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setRenderableType;
   procedure setSamples (self : access Inst; numSamples_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSamples");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (numSamples_P));
      Result := Object_CallObject (Method, Args, True);
   end setSamples;
   procedure setStencilBufferSize (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStencilBufferSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setStencilBufferSize;
   procedure setStereo (self : access Inst; enable_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStereo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setStereo;
   procedure setSwapBehavior
     (self : access Inst; behavior_P : access QtAda6.QtGui.QSurfaceFormat.SwapBehavior.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSwapBehavior");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, behavior_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setSwapBehavior;
   procedure setSwapInterval (self : access Inst; interval_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSwapInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (interval_P));
      Result := Object_CallObject (Method, Args, True);
   end setSwapInterval;
   procedure setVersion (self : access Inst; major_P : int; minor_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVersion");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (major_P));
      Tuple_SetItem (Args, 1, Long_FromLong (minor_P));
      Result := Object_CallObject (Method, Args, True);
   end setVersion;
   function stencilBufferSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stencilBufferSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end stencilBufferSize;
   function stereo (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stereo");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end stereo;
   function swapBehavior_F (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.SwapBehavior.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QSurfaceFormat.SwapBehavior.Class :=
        new QtAda6.QtGui.QSurfaceFormat.SwapBehavior.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "swapBehavior");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end swapBehavior_F;
   function swapInterval (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swapInterval");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end swapInterval;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end testOption;
   function version (self : access Inst) return Tuple_int_int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "version");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end version;
end QtAda6.QtGui.QSurfaceFormat;
