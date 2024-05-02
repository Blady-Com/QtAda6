-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qopenglfunctions.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QOpenGLContext;
limited with QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature;
package QtAda6.QtGui.QOpenGLFunctions is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type SEQUENCE_int is array (Positive range <>) of int;
   type SEQUENCE_float is array (Positive range <>) of float;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (context_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class) return Class;
   procedure glActiveTexture (self : access Inst; texture_P : int);
   procedure glAttachShader (self : access Inst; program_P : int; shader_P : int);
   procedure glBindAttribLocation (self : access Inst; program_P : int; index_P : int; name_P : bytes);
   procedure glBindBuffer (self : access Inst; target_P : int; buffer_P : int);
   procedure glBindFramebuffer (self : access Inst; target_P : int; framebuffer_P : int);
   procedure glBindRenderbuffer (self : access Inst; target_P : int; renderbuffer_P : int);
   procedure glBindTexture (self : access Inst; target_P : int; texture_P : int);
   procedure glBlendColor (self : access Inst; red_P : float; green_P : float; blue_P : float; alpha_P : float);
   procedure glBlendEquation (self : access Inst; mode_P : int);
   procedure glBlendEquationSeparate (self : access Inst; modeRGB_P : int; modeAlpha_P : int);
   procedure glBlendFunc (self : access Inst; sfactor_P : int; dfactor_P : int);
   procedure glBlendFuncSeparate
     (self : access Inst; srcRGB_P : int; dstRGB_P : int; srcAlpha_P : int; dstAlpha_P : int);
   function glCheckFramebufferStatus (self : access Inst; target_P : int) return int;
   procedure glClear (self : access Inst; mask_P : int);
   procedure glClearColor (self : access Inst; red_P : float; green_P : float; blue_P : float; alpha_P : float);
   procedure glClearDepthf (self : access Inst; depth_P : float);
   procedure glClearStencil (self : access Inst; s_P : int);
   procedure glColorMask (self : access Inst; red_P : int; green_P : int; blue_P : int; alpha_P : int);
   procedure glCompileShader (self : access Inst; shader_P : int);
   procedure glCompressedTexImage2D
     (self     : access Inst; target_P : int; level_P : int; internalformat_P : int; width_P : int; height_P : int;
      border_P : int; imageSize_P : int; data_P : int);
   procedure glCompressedTexSubImage2D
     (self     : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; width_P : int;
      height_P : int; format_P : int; imageSize_P : int; data_P : int);
   procedure glCopyTexImage2D
     (self : access Inst; target_P : int; level_P : int; internalformat_P : int; x_P : int; y_P : int; width_P : int;
      height_P : int; border_P : int);
   procedure glCopyTexSubImage2D
     (self    : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; x_P : int; y_P : int;
      width_P : int; height_P : int);
   function glCreateProgram (self : access Inst) return int;
   function glCreateShader (self : access Inst; type_K_P : int) return int;
   procedure glCullFace (self : access Inst; mode_P : int);
   procedure glDeleteBuffers (self : access Inst; n_P : int; buffers_P : SEQUENCE_int);
   procedure glDeleteFramebuffers (self : access Inst; n_P : int; framebuffers_P : SEQUENCE_int);
   procedure glDeleteProgram (self : access Inst; program_P : int);
   procedure glDeleteRenderbuffers (self : access Inst; n_P : int; renderbuffers_P : SEQUENCE_int);
   procedure glDeleteShader (self : access Inst; shader_P : int);
   procedure glDeleteTextures (self : access Inst; n_P : int; textures_P : SEQUENCE_int);
   procedure glDepthFunc (self : access Inst; func_P : int);
   procedure glDepthMask (self : access Inst; flag_P : int);
   procedure glDepthRangef (self : access Inst; zNear_P : float; zFar_P : float);
   procedure glDetachShader (self : access Inst; program_P : int; shader_P : int);
   procedure glDisable (self : access Inst; cap_P : int);
   procedure glDisableVertexAttribArray (self : access Inst; index_P : int);
   procedure glDrawArrays (self : access Inst; mode_P : int; first_P : int; count_P : int);
   procedure glDrawElements (self : access Inst; mode_P : int; count_P : int; type_K_P : int; indices_P : int);
   procedure glEnable (self : access Inst; cap_P : int);
   procedure glEnableVertexAttribArray (self : access Inst; index_P : int);
   procedure glFinish (self : access Inst);
   procedure glFlush (self : access Inst);
   procedure glFramebufferRenderbuffer
     (self : access Inst; target_P : int; attachment_P : int; renderbuffertarget_P : int; renderbuffer_P : int);
   procedure glFramebufferTexture2D
     (self : access Inst; target_P : int; attachment_P : int; textarget_P : int; texture_P : int; level_P : int);
   procedure glFrontFace (self : access Inst; mode_P : int);
   procedure glGenBuffers (self : access Inst; n_P : int; buffers_P : SEQUENCE_int);
   procedure glGenFramebuffers (self : access Inst; n_P : int; framebuffers_P : SEQUENCE_int);
   procedure glGenRenderbuffers (self : access Inst; n_P : int; renderbuffers_P : SEQUENCE_int);
   procedure glGenTextures (self : access Inst; n_P : int; textures_P : SEQUENCE_int);
   procedure glGenerateMipmap (self : access Inst; target_P : int);
   procedure glGetAttachedShaders
     (self : access Inst; program_P : int; maxcount_P : int; count_P : SEQUENCE_int; shaders_P : SEQUENCE_int);
   function glGetAttribLocation (self : access Inst; program_P : int; name_P : bytes) return int;
   function glGetBooleanv (self : access Inst; pname_P : int) return bool;
   procedure glGetBufferParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_int);
   function glGetError (self : access Inst) return int;
   function glGetFloatv (self : access Inst; arg_1_P : int) return float;
   procedure glGetFloatv (self : access Inst; pname_P : int; params_P : SEQUENCE_float);
   procedure glGetFramebufferAttachmentParameteriv
     (self : access Inst; target_P : int; attachment_P : int; pname_P : int; params_P : SEQUENCE_int);
   function glGetIntegerv (self : access Inst; arg_1_P : int) return int;
   procedure glGetIntegerv (self : access Inst; pname_P : int; params_P : SEQUENCE_int);
   procedure glGetProgramiv (self : access Inst; program_P : int; pname_P : int; params_P : SEQUENCE_int);
   procedure glGetRenderbufferParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_int);
   procedure glGetShaderPrecisionFormat
     (self        : access Inst; shadertype_P : int; precisiontype_P : int; range_K_P : SEQUENCE_int;
      precision_P : SEQUENCE_int);
   function glGetShaderSource (self : access Inst; shader_P : int) return bytes;
   procedure glGetShaderiv (self : access Inst; shader_P : int; pname_P : int; params_P : SEQUENCE_int);
   function glGetString (self : access Inst; name_P : int) return str;
   procedure glGetTexParameterfv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_float);
   procedure glGetTexParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_int);
   function glGetUniformLocation (self : access Inst; program_P : int; name_P : bytes) return int;
   procedure glGetUniformfv (self : access Inst; program_P : int; location_P : int; params_P : SEQUENCE_float);
   procedure glGetUniformiv (self : access Inst; program_P : int; location_P : int; params_P : SEQUENCE_int);
   procedure glGetVertexAttribfv (self : access Inst; index_P : int; pname_P : int; params_P : SEQUENCE_float);
   procedure glGetVertexAttribiv (self : access Inst; index_P : int; pname_P : int; params_P : SEQUENCE_int);
   procedure glHint (self : access Inst; target_P : int; mode_P : int);
   function glIsBuffer (self : access Inst; buffer_P : int) return int;
   function glIsEnabled (self : access Inst; cap_P : int) return int;
   function glIsFramebuffer (self : access Inst; framebuffer_P : int) return int;
   function glIsProgram (self : access Inst; program_P : int) return int;
   function glIsRenderbuffer (self : access Inst; renderbuffer_P : int) return int;
   function glIsShader (self : access Inst; shader_P : int) return int;
   function glIsTexture (self : access Inst; texture_P : int) return int;
   procedure glLineWidth (self : access Inst; width_P : float);
   procedure glLinkProgram (self : access Inst; program_P : int);
   procedure glPixelStorei (self : access Inst; pname_P : int; param_P : int);
   procedure glPolygonOffset (self : access Inst; factor_P : float; units_P : float);
   procedure glReadPixels
     (self     : access Inst; x_P : int; y_P : int; width_P : int; height_P : int; format_P : int; type_K_P : int;
      pixels_P : int);
   procedure glReleaseShaderCompiler (self : access Inst);
   procedure glRenderbufferStorage
     (self : access Inst; target_P : int; internalformat_P : int; width_P : int; height_P : int);
   procedure glSampleCoverage (self : access Inst; value_P : float; invert_P : int);
   procedure glScissor (self : access Inst; x_P : int; y_P : int; width_P : int; height_P : int);
   procedure glShaderBinary
     (self : access Inst; n_P : int; shaders_P : SEQUENCE_int; binaryformat_P : int; binary_P : int; length_P : int);
   procedure glShaderSource (self : access Inst; shader_P : int; source_P : str);
   procedure glStencilFunc (self : access Inst; func_P : int; ref_P : int; mask_P : int);
   procedure glStencilFuncSeparate (self : access Inst; face_P : int; func_P : int; ref_P : int; mask_P : int);
   procedure glStencilMask (self : access Inst; mask_P : int);
   procedure glStencilMaskSeparate (self : access Inst; face_P : int; mask_P : int);
   procedure glStencilOp (self : access Inst; fail_P : int; zfail_P : int; zpass_P : int);
   procedure glStencilOpSeparate (self : access Inst; face_P : int; fail_P : int; zfail_P : int; zpass_P : int);
   procedure glTexImage2D
     (self     : access Inst; target_P : int; level_P : int; internalformat_P : int; width_P : int; height_P : int;
      border_P : int; format_P : int; type_K_P : int; pixels_P : int);
   procedure glTexParameterf (self : access Inst; target_P : int; pname_P : int; param_P : float);
   procedure glTexParameterfv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_float);
   procedure glTexParameteri (self : access Inst; target_P : int; pname_P : int; param_P : int);
   procedure glTexParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_int);
   procedure glTexSubImage2D
     (self     : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; width_P : int;
      height_P : int; format_P : int; type_K_P : int; pixels_P : int);
   procedure glUniform1f (self : access Inst; location_P : int; x_P : float);
   procedure glUniform1fv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_float);
   procedure glUniform1i (self : access Inst; location_P : int; x_P : int);
   procedure glUniform1iv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_int);
   procedure glUniform2f (self : access Inst; location_P : int; x_P : float; y_P : float);
   procedure glUniform2fv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_float);
   procedure glUniform2i (self : access Inst; location_P : int; x_P : int; y_P : int);
   procedure glUniform2iv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_int);
   procedure glUniform3f (self : access Inst; location_P : int; x_P : float; y_P : float; z_P : float);
   procedure glUniform3fv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_float);
   procedure glUniform3i (self : access Inst; location_P : int; x_P : int; y_P : int; z_P : int);
   procedure glUniform3iv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_int);
   procedure glUniform4f (self : access Inst; location_P : int; x_P : float; y_P : float; z_P : float; w_P : float);
   procedure glUniform4fv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_float);
   procedure glUniform4i (self : access Inst; location_P : int; x_P : int; y_P : int; z_P : int; w_P : int);
   procedure glUniform4iv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_int);
   procedure glUniformMatrix2fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : SEQUENCE_float);
   procedure glUniformMatrix3fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : SEQUENCE_float);
   procedure glUniformMatrix4fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : SEQUENCE_float);
   procedure glUseProgram (self : access Inst; program_P : int);
   procedure glValidateProgram (self : access Inst; program_P : int);
   procedure glVertexAttrib1f (self : access Inst; indx_P : int; x_P : float);
   procedure glVertexAttrib1fv (self : access Inst; indx_P : int; values_P : SEQUENCE_float);
   procedure glVertexAttrib2f (self : access Inst; indx_P : int; x_P : float; y_P : float);
   procedure glVertexAttrib2fv (self : access Inst; indx_P : int; values_P : SEQUENCE_float);
   procedure glVertexAttrib3f (self : access Inst; indx_P : int; x_P : float; y_P : float; z_P : float);
   procedure glVertexAttrib3fv (self : access Inst; indx_P : int; values_P : SEQUENCE_float);
   procedure glVertexAttrib4f (self : access Inst; indx_P : int; x_P : float; y_P : float; z_P : float; w_P : float);
   procedure glVertexAttrib4fv (self : access Inst; indx_P : int; values_P : SEQUENCE_float);
   procedure glVertexAttribPointer
     (self : access Inst; indx_P : int; size_P : int; type_K_P : int; normalized_P : int; stride_P : int; ptr_P : int);
   procedure glViewport (self : access Inst; x_P : int; y_P : int; width_P : int; height_P : int);
   function hasOpenGLFeature
     (self : access Inst; feature_P : access QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature.Inst'Class) return bool;
   procedure initializeOpenGLFunctions (self : access Inst);
   function openGLFeatures (self : access Inst) return access QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature.Inst'Class;
end QtAda6.QtGui.QOpenGLFunctions;
