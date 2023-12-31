-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qopenglextrafunctions.adb
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
with QtAda6.QtGui.QOpenGLFunctions;
with QtAda6.QtGui.QOpenGLContext;
package body QtAda6.QtGui.QOpenGLExtraFunctions is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLExtraFunctions");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (context_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLExtraFunctions");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, context_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure glActiveShaderProgram (self : access Inst; pipeline_P : int; program_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glActiveShaderProgram");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pipeline_P));
      Tuple_SetItem (Args, 1, Long_FromLong (program_P));
      Result := Object_CallObject (Method, Args, True);
   end glActiveShaderProgram;
   procedure glBeginQuery (self : access Inst; target_P : int; id_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBeginQuery");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (id_P));
      Result := Object_CallObject (Method, Args, True);
   end glBeginQuery;
   procedure glBeginTransformFeedback (self : access Inst; primitiveMode_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBeginTransformFeedback");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (primitiveMode_P));
      Result := Object_CallObject (Method, Args, True);
   end glBeginTransformFeedback;
   procedure glBindBufferBase (self : access Inst; target_P : int; index_P : int; buffer_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindBufferBase");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Tuple_SetItem (Args, 2, Long_FromLong (buffer_P));
      Result := Object_CallObject (Method, Args, True);
   end glBindBufferBase;
   procedure glBindImageTexture
     (self       : access Inst; unit_P : int; texture_P : int; level_P : int; layered_P : int; layer_P : int;
      access_K_P : int; format_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindImageTexture");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (unit_P));
      Tuple_SetItem (Args, 1, Long_FromLong (texture_P));
      Tuple_SetItem (Args, 2, Long_FromLong (level_P));
      Tuple_SetItem (Args, 3, Long_FromLong (layered_P));
      Tuple_SetItem (Args, 4, Long_FromLong (layer_P));
      Tuple_SetItem (Args, 5, Long_FromLong (access_K_P));
      Tuple_SetItem (Args, 6, Long_FromLong (format_P));
      Result := Object_CallObject (Method, Args, True);
   end glBindImageTexture;
   procedure glBindProgramPipeline (self : access Inst; pipeline_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindProgramPipeline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pipeline_P));
      Result := Object_CallObject (Method, Args, True);
   end glBindProgramPipeline;
   procedure glBindSampler (self : access Inst; unit_P : int; sampler_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindSampler");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (unit_P));
      Tuple_SetItem (Args, 1, Long_FromLong (sampler_P));
      Result := Object_CallObject (Method, Args, True);
   end glBindSampler;
   procedure glBindTransformFeedback (self : access Inst; target_P : int; id_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindTransformFeedback");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (id_P));
      Result := Object_CallObject (Method, Args, True);
   end glBindTransformFeedback;
   procedure glBindVertexArray (self : access Inst; array_K_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindVertexArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (array_K_P));
      Result := Object_CallObject (Method, Args, True);
   end glBindVertexArray;
   procedure glBlendBarrier (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendBarrier");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end glBlendBarrier;
   procedure glBlendEquationSeparatei (self : access Inst; buf_P : int; modeRGB_P : int; modeAlpha_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendEquationSeparatei");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (buf_P));
      Tuple_SetItem (Args, 1, Long_FromLong (modeRGB_P));
      Tuple_SetItem (Args, 2, Long_FromLong (modeAlpha_P));
      Result := Object_CallObject (Method, Args, True);
   end glBlendEquationSeparatei;
   procedure glBlendEquationi (self : access Inst; buf_P : int; mode_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendEquationi");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (buf_P));
      Tuple_SetItem (Args, 1, Long_FromLong (mode_P));
      Result := Object_CallObject (Method, Args, True);
   end glBlendEquationi;
   procedure glBlendFuncSeparatei
     (self : access Inst; buf_P : int; srcRGB_P : int; dstRGB_P : int; srcAlpha_P : int; dstAlpha_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendFuncSeparatei");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (buf_P));
      Tuple_SetItem (Args, 1, Long_FromLong (srcRGB_P));
      Tuple_SetItem (Args, 2, Long_FromLong (dstRGB_P));
      Tuple_SetItem (Args, 3, Long_FromLong (srcAlpha_P));
      Tuple_SetItem (Args, 4, Long_FromLong (dstAlpha_P));
      Result := Object_CallObject (Method, Args, True);
   end glBlendFuncSeparatei;
   procedure glBlendFunci (self : access Inst; buf_P : int; src_P : int; dst_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendFunci");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (buf_P));
      Tuple_SetItem (Args, 1, Long_FromLong (src_P));
      Tuple_SetItem (Args, 2, Long_FromLong (dst_P));
      Result := Object_CallObject (Method, Args, True);
   end glBlendFunci;
   procedure glBlitFramebuffer
     (self    : access Inst; srcX0_P : int; srcY0_P : int; srcX1_P : int; srcY1_P : int; dstX0_P : int; dstY0_P : int;
      dstX1_P : int; dstY1_P : int; mask_P : int; filter_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlitFramebuffer");
      Args   := Tuple_New (10);
      Tuple_SetItem (Args, 0, Long_FromLong (srcX0_P));
      Tuple_SetItem (Args, 1, Long_FromLong (srcY0_P));
      Tuple_SetItem (Args, 2, Long_FromLong (srcX1_P));
      Tuple_SetItem (Args, 3, Long_FromLong (srcY1_P));
      Tuple_SetItem (Args, 4, Long_FromLong (dstX0_P));
      Tuple_SetItem (Args, 5, Long_FromLong (dstY0_P));
      Tuple_SetItem (Args, 6, Long_FromLong (dstX1_P));
      Tuple_SetItem (Args, 7, Long_FromLong (dstY1_P));
      Tuple_SetItem (Args, 8, Long_FromLong (mask_P));
      Tuple_SetItem (Args, 9, Long_FromLong (filter_P));
      Result := Object_CallObject (Method, Args, True);
   end glBlitFramebuffer;
   procedure glClearBufferfi (self : access Inst; buffer_P : int; drawbuffer_P : int; depth_P : float; stencil_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glClearBufferfi");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (buffer_P));
      Tuple_SetItem (Args, 1, Long_FromLong (drawbuffer_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (depth_P));
      Tuple_SetItem (Args, 3, Long_FromLong (stencil_P));
      Result := Object_CallObject (Method, Args, True);
   end glClearBufferfi;
   procedure glClearBufferfv (self : access Inst; buffer_P : int; drawbuffer_P : int; value_P : Sequence_float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glClearBufferfv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (buffer_P));
      Tuple_SetItem (Args, 1, Long_FromLong (drawbuffer_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glClearBufferfv;
   procedure glClearBufferiv (self : access Inst; buffer_P : int; drawbuffer_P : int; value_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glClearBufferiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (buffer_P));
      Tuple_SetItem (Args, 1, Long_FromLong (drawbuffer_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glClearBufferiv;
   procedure glClearBufferuiv (self : access Inst; buffer_P : int; drawbuffer_P : int; value_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glClearBufferuiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (buffer_P));
      Tuple_SetItem (Args, 1, Long_FromLong (drawbuffer_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glClearBufferuiv;
   procedure glColorMaski (self : access Inst; index_P : int; r_P : int; g_P : int; b_P : int; a_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glColorMaski");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (r_P));
      Tuple_SetItem (Args, 2, Long_FromLong (g_P));
      Tuple_SetItem (Args, 3, Long_FromLong (b_P));
      Tuple_SetItem (Args, 4, Long_FromLong (a_P));
      Result := Object_CallObject (Method, Args, True);
   end glColorMaski;
   procedure glCompressedTexImage3D
     (self    : access Inst; target_P : int; level_P : int; internalformat_P : int; width_P : int; height_P : int;
      depth_P : int; border_P : int; imageSize_P : int; data_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCompressedTexImage3D");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Tuple_SetItem (Args, 5, Long_FromLong (depth_P));
      Tuple_SetItem (Args, 6, Long_FromLong (border_P));
      Tuple_SetItem (Args, 7, Long_FromLong (imageSize_P));
      Tuple_SetItem (Args, 8, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
   end glCompressedTexImage3D;
   procedure glCompressedTexSubImage3D
     (self    : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; zoffset_P : int;
      width_P : int; height_P : int; depth_P : int; format_P : int; imageSize_P : int; data_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCompressedTexSubImage3D");
      Args   := Tuple_New (11);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (xoffset_P));
      Tuple_SetItem (Args, 3, Long_FromLong (yoffset_P));
      Tuple_SetItem (Args, 4, Long_FromLong (zoffset_P));
      Tuple_SetItem (Args, 5, Long_FromLong (width_P));
      Tuple_SetItem (Args, 6, Long_FromLong (height_P));
      Tuple_SetItem (Args, 7, Long_FromLong (depth_P));
      Tuple_SetItem (Args, 8, Long_FromLong (format_P));
      Tuple_SetItem (Args, 9, Long_FromLong (imageSize_P));
      Tuple_SetItem (Args, 10, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
   end glCompressedTexSubImage3D;
   procedure glCopyImageSubData
     (self       : access Inst; srcName_P : int; srcTarget_P : int; srcLevel_P : int; srcX_P : int; srcY_P : int;
      srcZ_P     : int; dstName_P : int; dstTarget_P : int; dstLevel_P : int; dstX_P : int; dstY_P : int; dstZ_P : int;
      srcWidth_P : int; srcHeight_P : int; srcDepth_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCopyImageSubData");
      Args   := Tuple_New (15);
      Tuple_SetItem (Args, 0, Long_FromLong (srcName_P));
      Tuple_SetItem (Args, 1, Long_FromLong (srcTarget_P));
      Tuple_SetItem (Args, 2, Long_FromLong (srcLevel_P));
      Tuple_SetItem (Args, 3, Long_FromLong (srcX_P));
      Tuple_SetItem (Args, 4, Long_FromLong (srcY_P));
      Tuple_SetItem (Args, 5, Long_FromLong (srcZ_P));
      Tuple_SetItem (Args, 6, Long_FromLong (dstName_P));
      Tuple_SetItem (Args, 7, Long_FromLong (dstTarget_P));
      Tuple_SetItem (Args, 8, Long_FromLong (dstLevel_P));
      Tuple_SetItem (Args, 9, Long_FromLong (dstX_P));
      Tuple_SetItem (Args, 10, Long_FromLong (dstY_P));
      Tuple_SetItem (Args, 11, Long_FromLong (dstZ_P));
      Tuple_SetItem (Args, 12, Long_FromLong (srcWidth_P));
      Tuple_SetItem (Args, 13, Long_FromLong (srcHeight_P));
      Tuple_SetItem (Args, 14, Long_FromLong (srcDepth_P));
      Result := Object_CallObject (Method, Args, True);
   end glCopyImageSubData;
   procedure glCopyTexSubImage3D
     (self : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; zoffset_P : int; x_P : int;
      y_P  : int; width_P : int; height_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCopyTexSubImage3D");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (xoffset_P));
      Tuple_SetItem (Args, 3, Long_FromLong (yoffset_P));
      Tuple_SetItem (Args, 4, Long_FromLong (zoffset_P));
      Tuple_SetItem (Args, 5, Long_FromLong (x_P));
      Tuple_SetItem (Args, 6, Long_FromLong (y_P));
      Tuple_SetItem (Args, 7, Long_FromLong (width_P));
      Tuple_SetItem (Args, 8, Long_FromLong (height_P));
      Result := Object_CallObject (Method, Args, True);
   end glCopyTexSubImage3D;
   procedure glDebugMessageControl
     (self      : access Inst; source_P : int; type_K_P : int; severity_P : int; count_P : int; ids_P : Sequence_int;
      enabled_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDebugMessageControl");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (source_P));
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 2, Long_FromLong (severity_P));
      Tuple_SetItem (Args, 3, Long_FromLong (count_P));
      Tuple_SetItem (Args, 4, No_Value);
      Tuple_SetItem (Args, 5, Long_FromLong (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end glDebugMessageControl;
   procedure glDebugMessageInsert
     (self : access Inst; source_P : int; type_K_P : int; id_P : int; severity_P : int; length_P : int; buf_P : bytes)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDebugMessageInsert");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (source_P));
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 2, Long_FromLong (id_P));
      Tuple_SetItem (Args, 3, Long_FromLong (severity_P));
      Tuple_SetItem (Args, 4, Long_FromLong (length_P));
      Tuple_SetItem (Args, 5, Bytes_FromString (String (buf_P)));
      Result := Object_CallObject (Method, Args, True);
   end glDebugMessageInsert;
   procedure glDeleteProgramPipelines (self : access Inst; n_P : int; pipelines_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteProgramPipelines");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glDeleteProgramPipelines;
   procedure glDeleteQueries (self : access Inst; n_P : int; ids_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteQueries");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glDeleteQueries;
   procedure glDeleteSamplers (self : access Inst; count_P : int; samplers_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteSamplers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (count_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glDeleteSamplers;
   procedure glDeleteTransformFeedbacks (self : access Inst; n_P : int; ids_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteTransformFeedbacks");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glDeleteTransformFeedbacks;
   procedure glDeleteVertexArrays (self : access Inst; n_P : int; arrays_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteVertexArrays");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glDeleteVertexArrays;
   procedure glDisablei (self : access Inst; target_P : int; index_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDisablei");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
   end glDisablei;
   procedure glDispatchCompute (self : access Inst; num_groups_x_P : int; num_groups_y_P : int; num_groups_z_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDispatchCompute");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (num_groups_x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (num_groups_y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (num_groups_z_P));
      Result := Object_CallObject (Method, Args, True);
   end glDispatchCompute;
   procedure glDrawArraysIndirect (self : access Inst; mode_P : int; indirect_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawArraysIndirect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (indirect_P));
      Result := Object_CallObject (Method, Args, True);
   end glDrawArraysIndirect;
   procedure glDrawArraysInstanced
     (self : access Inst; mode_P : int; first_P : int; count_P : int; instancecount_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawArraysInstanced");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (instancecount_P));
      Result := Object_CallObject (Method, Args, True);
   end glDrawArraysInstanced;
   procedure glDrawBuffers (self : access Inst; n_P : int; bufs_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawBuffers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glDrawBuffers;
   procedure glDrawElementsBaseVertex
     (self : access Inst; mode_P : int; count_P : int; type_K_P : int; indices_P : int; basevertex_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawElementsBaseVertex");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (indices_P));
      Tuple_SetItem (Args, 4, Long_FromLong (basevertex_P));
      Result := Object_CallObject (Method, Args, True);
   end glDrawElementsBaseVertex;
   procedure glDrawElementsIndirect (self : access Inst; mode_P : int; type_K_P : int; indirect_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawElementsIndirect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 2, Long_FromLong (indirect_P));
      Result := Object_CallObject (Method, Args, True);
   end glDrawElementsIndirect;
   procedure glDrawElementsInstanced
     (self : access Inst; mode_P : int; count_P : int; type_K_P : int; indices_P : int; instancecount_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawElementsInstanced");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (indices_P));
      Tuple_SetItem (Args, 4, Long_FromLong (instancecount_P));
      Result := Object_CallObject (Method, Args, True);
   end glDrawElementsInstanced;
   procedure glDrawElementsInstancedBaseVertex
     (self         : access Inst; mode_P : int; count_P : int; type_K_P : int; indices_P : int; instancecount_P : int;
      basevertex_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawElementsInstancedBaseVertex");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (indices_P));
      Tuple_SetItem (Args, 4, Long_FromLong (instancecount_P));
      Tuple_SetItem (Args, 5, Long_FromLong (basevertex_P));
      Result := Object_CallObject (Method, Args, True);
   end glDrawElementsInstancedBaseVertex;
   procedure glDrawRangeElements
     (self : access Inst; mode_P : int; start_P : int; end_K_P : int; count_P : int; type_K_P : int; indices_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawRangeElements");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (count_P));
      Tuple_SetItem (Args, 4, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 5, Long_FromLong (indices_P));
      Result := Object_CallObject (Method, Args, True);
   end glDrawRangeElements;
   procedure glDrawRangeElementsBaseVertex
     (self : access Inst; mode_P : int; start_P : int; end_K_P : int; count_P : int; type_K_P : int; indices_P : int;
      basevertex_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawRangeElementsBaseVertex");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (count_P));
      Tuple_SetItem (Args, 4, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 5, Long_FromLong (indices_P));
      Tuple_SetItem (Args, 6, Long_FromLong (basevertex_P));
      Result := Object_CallObject (Method, Args, True);
   end glDrawRangeElementsBaseVertex;
   procedure glEnablei (self : access Inst; target_P : int; index_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glEnablei");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
   end glEnablei;
   procedure glEndQuery (self : access Inst; target_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glEndQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Result := Object_CallObject (Method, Args, True);
   end glEndQuery;
   procedure glFramebufferParameteri (self : access Inst; target_P : int; pname_P : int; param_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glFramebufferParameteri");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, Long_FromLong (param_P));
      Result := Object_CallObject (Method, Args, True);
   end glFramebufferParameteri;
   procedure glFramebufferTexture
     (self : access Inst; target_P : int; attachment_P : int; texture_P : int; level_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glFramebufferTexture");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (attachment_P));
      Tuple_SetItem (Args, 2, Long_FromLong (texture_P));
      Tuple_SetItem (Args, 3, Long_FromLong (level_P));
      Result := Object_CallObject (Method, Args, True);
   end glFramebufferTexture;
   procedure glFramebufferTextureLayer
     (self : access Inst; target_P : int; attachment_P : int; texture_P : int; level_P : int; layer_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glFramebufferTextureLayer");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (attachment_P));
      Tuple_SetItem (Args, 2, Long_FromLong (texture_P));
      Tuple_SetItem (Args, 3, Long_FromLong (level_P));
      Tuple_SetItem (Args, 4, Long_FromLong (layer_P));
      Result := Object_CallObject (Method, Args, True);
   end glFramebufferTextureLayer;
   procedure glGenProgramPipelines (self : access Inst; n_P : int; pipelines_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenProgramPipelines");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGenProgramPipelines;
   procedure glGenQueries (self : access Inst; n_P : int; ids_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenQueries");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGenQueries;
   procedure glGenSamplers (self : access Inst; count_P : int; samplers_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenSamplers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (count_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGenSamplers;
   procedure glGenTransformFeedbacks (self : access Inst; n_P : int; ids_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenTransformFeedbacks");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGenTransformFeedbacks;
   procedure glGenVertexArrays (self : access Inst; n_P : int; arrays_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenVertexArrays");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGenVertexArrays;
   procedure glGetActiveUniformBlockiv
     (self : access Inst; program_P : int; uniformBlockIndex_P : int; pname_P : int; params_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetActiveUniformBlockiv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (uniformBlockIndex_P));
      Tuple_SetItem (Args, 2, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetActiveUniformBlockiv;
   procedure glGetActiveUniformsiv
     (self     : access Inst; program_P : int; uniformCount_P : int; uniformIndices_P : Sequence_int; pname_P : int;
      params_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetActiveUniformsiv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (uniformCount_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetActiveUniformsiv;
   function glGetBooleani_v (self : access Inst; target_P : int; index_P : int) return Union_bool_List_Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetBooleani_v");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end glGetBooleani_v;
   function glGetFragDataLocation (self : access Inst; program_P : int; name_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetFragDataLocation");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (name_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glGetFragDataLocation;
   procedure glGetFramebufferParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetFramebufferParameteriv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetFramebufferParameteriv;
   function glGetGraphicsResetStatus (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetGraphicsResetStatus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glGetGraphicsResetStatus;
   function glGetIntegeri_v (self : access Inst; arg_1_P : int; arg_2_P : int) return Union_int_List_Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetIntegeri_v");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (arg_2_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end glGetIntegeri_v;
   procedure glGetIntegeri_v (self : access Inst; target_P : int; index_P : int; data_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetIntegeri_v");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetIntegeri_v;
   procedure glGetInternalformativ
     (self     : access Inst; target_P : int; internalformat_P : int; pname_P : int; bufSize_P : int;
      params_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetInternalformativ");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 2, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 3, Long_FromLong (bufSize_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetInternalformativ;
   procedure glGetMultisamplefv (self : access Inst; pname_P : int; index_P : int; val_P : Sequence_float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetMultisamplefv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetMultisamplefv;
   procedure glGetProgramInterfaceiv
     (self : access Inst; program_P : int; programInterface_P : int; pname_P : int; params_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetProgramInterfaceiv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (programInterface_P));
      Tuple_SetItem (Args, 2, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetProgramInterfaceiv;
   procedure glGetProgramPipelineiv (self : access Inst; pipeline_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetProgramPipelineiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (pipeline_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetProgramPipelineiv;
   function glGetProgramResourceIndex
     (self : access Inst; program_P : int; programInterface_P : int; name_P : bytes) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetProgramResourceIndex");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (programInterface_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (name_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glGetProgramResourceIndex;
   function glGetProgramResourceLocation
     (self : access Inst; program_P : int; programInterface_P : int; name_P : bytes) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetProgramResourceLocation");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (programInterface_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (name_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glGetProgramResourceLocation;
   procedure glGetProgramResourceiv
     (self    : access Inst; program_P : int; programInterface_P : int; index_P : int; propCount_P : int;
      props_P : Sequence_int; bufSize_P : int; length_P : Sequence_int; params_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetProgramResourceiv");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (programInterface_P));
      Tuple_SetItem (Args, 2, Long_FromLong (index_P));
      Tuple_SetItem (Args, 3, Long_FromLong (propCount_P));
      Tuple_SetItem (Args, 4, No_Value);
      Tuple_SetItem (Args, 5, Long_FromLong (bufSize_P));
      Tuple_SetItem (Args, 6, No_Value);
      Tuple_SetItem (Args, 7, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetProgramResourceiv;
   procedure glGetQueryObjectuiv (self : access Inst; id_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetQueryObjectuiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetQueryObjectuiv;
   procedure glGetQueryiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetQueryiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetQueryiv;
   procedure glGetSamplerParameterIiv (self : access Inst; sampler_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetSamplerParameterIiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetSamplerParameterIiv;
   procedure glGetSamplerParameterIuiv (self : access Inst; sampler_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetSamplerParameterIuiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetSamplerParameterIuiv;
   procedure glGetSamplerParameterfv (self : access Inst; sampler_P : int; pname_P : int; params_P : Sequence_float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetSamplerParameterfv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetSamplerParameterfv;
   procedure glGetSamplerParameteriv (self : access Inst; sampler_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetSamplerParameteriv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetSamplerParameteriv;
   function glGetStringi (self : access Inst; name_P : int; index_P : int) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetStringi");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (name_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end glGetStringi;
   procedure glGetTexLevelParameterfv
     (self : access Inst; target_P : int; level_P : int; pname_P : int; params_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetTexLevelParameterfv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetTexLevelParameterfv;
   procedure glGetTexLevelParameteriv
     (self : access Inst; target_P : int; level_P : int; pname_P : int; params_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetTexLevelParameteriv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetTexLevelParameteriv;
   procedure glGetTexParameterIiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetTexParameterIiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetTexParameterIiv;
   procedure glGetTexParameterIuiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetTexParameterIuiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetTexParameterIuiv;
   function glGetUniformBlockIndex (self : access Inst; program_P : int; uniformBlockName_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetUniformBlockIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (uniformBlockName_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glGetUniformBlockIndex;
   procedure glGetUniformuiv (self : access Inst; program_P : int; location_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetUniformuiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetUniformuiv;
   procedure glGetVertexAttribIiv (self : access Inst; index_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetVertexAttribIiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetVertexAttribIiv;
   procedure glGetVertexAttribIuiv (self : access Inst; index_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetVertexAttribIuiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetVertexAttribIuiv;
   function glGetnUniformfv (self : access Inst; program_P : int; location_P : int; bufSize_P : int) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetnUniformfv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (bufSize_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end glGetnUniformfv;
   procedure glGetnUniformiv
     (self : access Inst; program_P : int; location_P : int; bufSize_P : int; params_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetnUniformiv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (bufSize_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetnUniformiv;
   procedure glGetnUniformuiv
     (self : access Inst; program_P : int; location_P : int; bufSize_P : int; params_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetnUniformuiv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (bufSize_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glGetnUniformuiv;
   procedure glInvalidateFramebuffer
     (self : access Inst; target_P : int; numAttachments_P : int; attachments_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glInvalidateFramebuffer");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (numAttachments_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glInvalidateFramebuffer;
   procedure glInvalidateSubFramebuffer
     (self    : access Inst; target_P : int; numAttachments_P : int; attachments_P : Sequence_int; x_P : int; y_P : int;
      width_P : int; height_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glInvalidateSubFramebuffer");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (numAttachments_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (x_P));
      Tuple_SetItem (Args, 4, Long_FromLong (y_P));
      Tuple_SetItem (Args, 5, Long_FromLong (width_P));
      Tuple_SetItem (Args, 6, Long_FromLong (height_P));
      Result := Object_CallObject (Method, Args, True);
   end glInvalidateSubFramebuffer;
   function glIsEnabledi (self : access Inst; target_P : int; index_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsEnabledi");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glIsEnabledi;
   function glIsProgramPipeline (self : access Inst; pipeline_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsProgramPipeline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pipeline_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glIsProgramPipeline;
   function glIsQuery (self : access Inst; id_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glIsQuery;
   function glIsSampler (self : access Inst; sampler_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsSampler");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glIsSampler;
   function glIsTransformFeedback (self : access Inst; id_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsTransformFeedback");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glIsTransformFeedback;
   function glIsVertexArray (self : access Inst; array_K_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsVertexArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (array_K_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glIsVertexArray;
   procedure glMemoryBarrier (self : access Inst; barriers_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glMemoryBarrier");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (barriers_P));
      Result := Object_CallObject (Method, Args, True);
   end glMemoryBarrier;
   procedure glMemoryBarrierByRegion (self : access Inst; barriers_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glMemoryBarrierByRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (barriers_P));
      Result := Object_CallObject (Method, Args, True);
   end glMemoryBarrierByRegion;
   procedure glMinSampleShading (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glMinSampleShading");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end glMinSampleShading;
   procedure glObjectLabel (self : access Inst; identifier_P : int; name_P : int; length_P : int; label_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glObjectLabel");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (identifier_P));
      Tuple_SetItem (Args, 1, Long_FromLong (name_P));
      Tuple_SetItem (Args, 2, Long_FromLong (length_P));
      Tuple_SetItem (Args, 3, Bytes_FromString (String (label_P)));
      Result := Object_CallObject (Method, Args, True);
   end glObjectLabel;
   procedure glObjectPtrLabel (self : access Inst; ptr_P : int; length_P : int; label_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glObjectPtrLabel");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (ptr_P));
      Tuple_SetItem (Args, 1, Long_FromLong (length_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (label_P)));
      Result := Object_CallObject (Method, Args, True);
   end glObjectPtrLabel;
   procedure glPatchParameteri (self : access Inst; pname_P : int; value_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glPatchParameteri");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 1, Long_FromLong (value_P));
      Result := Object_CallObject (Method, Args, True);
   end glPatchParameteri;
   procedure glPopDebugGroup (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glPopDebugGroup");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end glPopDebugGroup;
   procedure glPrimitiveBoundingBox
     (self   : access Inst; minX_P : float; minY_P : float; minZ_P : float; minW_P : float; maxX_P : float;
      maxY_P : float; maxZ_P : float; maxW_P : float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glPrimitiveBoundingBox");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, Float_FromDouble (minX_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (minY_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (minZ_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (minW_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (maxX_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (maxY_P));
      Tuple_SetItem (Args, 6, Float_FromDouble (maxZ_P));
      Tuple_SetItem (Args, 7, Float_FromDouble (maxW_P));
      Result := Object_CallObject (Method, Args, True);
   end glPrimitiveBoundingBox;
   procedure glProgramBinary (self : access Inst; program_P : int; binaryFormat_P : int; binary_P : int; length_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramBinary");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (binaryFormat_P));
      Tuple_SetItem (Args, 2, Long_FromLong (binary_P));
      Tuple_SetItem (Args, 3, Long_FromLong (length_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramBinary;
   procedure glProgramParameteri (self : access Inst; program_P : int; pname_P : int; value_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramParameteri");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, Long_FromLong (value_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramParameteri;
   procedure glProgramUniform1f (self : access Inst; program_P : int; location_P : int; v0_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform1f");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (v0_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform1f;
   procedure glProgramUniform1fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform1fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform1fv;
   procedure glProgramUniform1i (self : access Inst; program_P : int; location_P : int; v0_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform1i");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v0_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform1i;
   procedure glProgramUniform1iv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform1iv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform1iv;
   procedure glProgramUniform1ui (self : access Inst; program_P : int; location_P : int; v0_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform1ui");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v0_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform1ui;
   procedure glProgramUniform1uiv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform1uiv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform1uiv;
   procedure glProgramUniform2f (self : access Inst; program_P : int; location_P : int; v0_P : float; v1_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform2f");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (v0_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (v1_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform2f;
   procedure glProgramUniform2fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform2fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform2fv;
   procedure glProgramUniform2i (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform2i");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 3, Long_FromLong (v1_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform2i;
   procedure glProgramUniform2iv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform2iv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform2iv;
   procedure glProgramUniform2ui (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform2ui");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 3, Long_FromLong (v1_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform2ui;
   procedure glProgramUniform2uiv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform2uiv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform2uiv;
   procedure glProgramUniform3f
     (self : access Inst; program_P : int; location_P : int; v0_P : float; v1_P : float; v2_P : float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform3f");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (v0_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (v1_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (v2_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform3f;
   procedure glProgramUniform3fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform3fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform3fv;
   procedure glProgramUniform3i
     (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int; v2_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform3i");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 3, Long_FromLong (v1_P));
      Tuple_SetItem (Args, 4, Long_FromLong (v2_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform3i;
   procedure glProgramUniform3iv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform3iv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform3iv;
   procedure glProgramUniform3ui
     (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int; v2_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform3ui");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 3, Long_FromLong (v1_P));
      Tuple_SetItem (Args, 4, Long_FromLong (v2_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform3ui;
   procedure glProgramUniform3uiv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform3uiv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform3uiv;
   procedure glProgramUniform4f
     (self : access Inst; program_P : int; location_P : int; v0_P : float; v1_P : float; v2_P : float; v3_P : float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform4f");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (v0_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (v1_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (v2_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (v3_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform4f;
   procedure glProgramUniform4fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform4fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform4fv;
   procedure glProgramUniform4i
     (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int; v2_P : int; v3_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform4i");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 3, Long_FromLong (v1_P));
      Tuple_SetItem (Args, 4, Long_FromLong (v2_P));
      Tuple_SetItem (Args, 5, Long_FromLong (v3_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform4i;
   procedure glProgramUniform4iv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform4iv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform4iv;
   procedure glProgramUniform4ui
     (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int; v2_P : int; v3_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform4ui");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 3, Long_FromLong (v1_P));
      Tuple_SetItem (Args, 4, Long_FromLong (v2_P));
      Tuple_SetItem (Args, 5, Long_FromLong (v3_P));
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform4ui;
   procedure glProgramUniform4uiv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniform4uiv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniform4uiv;
   procedure glProgramUniformMatrix2fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix2fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix2fv;
   procedure glProgramUniformMatrix2x3fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix2x3fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix2x3fv;
   procedure glProgramUniformMatrix2x4fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix2x4fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix2x4fv;
   procedure glProgramUniformMatrix3fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix3fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix3fv;
   procedure glProgramUniformMatrix3x2fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix3x2fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix3x2fv;
   procedure glProgramUniformMatrix3x4fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix3x4fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix3x4fv;
   procedure glProgramUniformMatrix4fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix4fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix4fv;
   procedure glProgramUniformMatrix4x2fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix4x2fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix4x2fv;
   procedure glProgramUniformMatrix4x3fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glProgramUniformMatrix4x3fv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glProgramUniformMatrix4x3fv;
   procedure glPushDebugGroup (self : access Inst; source_P : int; id_P : int; length_P : int; message_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glPushDebugGroup");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (source_P));
      Tuple_SetItem (Args, 1, Long_FromLong (id_P));
      Tuple_SetItem (Args, 2, Long_FromLong (length_P));
      Tuple_SetItem (Args, 3, Bytes_FromString (String (message_P)));
      Result := Object_CallObject (Method, Args, True);
   end glPushDebugGroup;
   procedure glReadBuffer (self : access Inst; mode_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glReadBuffer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Result := Object_CallObject (Method, Args, True);
   end glReadBuffer;
   procedure glReadnPixels
     (self      : access Inst; x_P : int; y_P : int; width_P : int; height_P : int; format_P : int; type_K_P : int;
      bufSize_P : int; data_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glReadnPixels");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (width_P));
      Tuple_SetItem (Args, 3, Long_FromLong (height_P));
      Tuple_SetItem (Args, 4, Long_FromLong (format_P));
      Tuple_SetItem (Args, 5, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 6, Long_FromLong (bufSize_P));
      Tuple_SetItem (Args, 7, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
   end glReadnPixels;
   procedure glRenderbufferStorageMultisample
     (self : access Inst; target_P : int; samples_P : int; internalformat_P : int; width_P : int; height_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glRenderbufferStorageMultisample");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (samples_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Result := Object_CallObject (Method, Args, True);
   end glRenderbufferStorageMultisample;
   procedure glSampleMaski (self : access Inst; maskNumber_P : int; mask_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glSampleMaski");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (maskNumber_P));
      Tuple_SetItem (Args, 1, Long_FromLong (mask_P));
      Result := Object_CallObject (Method, Args, True);
   end glSampleMaski;
   procedure glSamplerParameterIiv (self : access Inst; sampler_P : int; pname_P : int; param_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glSamplerParameterIiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glSamplerParameterIiv;
   procedure glSamplerParameterIuiv (self : access Inst; sampler_P : int; pname_P : int; param_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glSamplerParameterIuiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glSamplerParameterIuiv;
   procedure glSamplerParameterf (self : access Inst; sampler_P : int; pname_P : int; param_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glSamplerParameterf");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (param_P));
      Result := Object_CallObject (Method, Args, True);
   end glSamplerParameterf;
   procedure glSamplerParameterfv (self : access Inst; sampler_P : int; pname_P : int; param_P : Sequence_float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glSamplerParameterfv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glSamplerParameterfv;
   procedure glSamplerParameteri (self : access Inst; sampler_P : int; pname_P : int; param_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glSamplerParameteri");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, Long_FromLong (param_P));
      Result := Object_CallObject (Method, Args, True);
   end glSamplerParameteri;
   procedure glSamplerParameteriv (self : access Inst; sampler_P : int; pname_P : int; param_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glSamplerParameteriv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (sampler_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glSamplerParameteriv;
   procedure glTexBuffer (self : access Inst; target_P : int; internalformat_P : int; buffer_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexBuffer");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 2, Long_FromLong (buffer_P));
      Result := Object_CallObject (Method, Args, True);
   end glTexBuffer;
   procedure glTexImage3D
     (self    : access Inst; target_P : int; level_P : int; internalformat_P : int; width_P : int; height_P : int;
      depth_P : int; border_P : int; format_P : int; type_K_P : int; pixels_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexImage3D");
      Args   := Tuple_New (10);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Tuple_SetItem (Args, 5, Long_FromLong (depth_P));
      Tuple_SetItem (Args, 6, Long_FromLong (border_P));
      Tuple_SetItem (Args, 7, Long_FromLong (format_P));
      Tuple_SetItem (Args, 8, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 9, Long_FromLong (pixels_P));
      Result := Object_CallObject (Method, Args, True);
   end glTexImage3D;
   procedure glTexParameterIiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexParameterIiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glTexParameterIiv;
   procedure glTexParameterIuiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexParameterIuiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glTexParameterIuiv;
   procedure glTexStorage2D
     (self : access Inst; target_P : int; levels_P : int; internalformat_P : int; width_P : int; height_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexStorage2D");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (levels_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Result := Object_CallObject (Method, Args, True);
   end glTexStorage2D;
   procedure glTexStorage2DMultisample
     (self : access Inst; target_P : int; samples_P : int; internalformat_P : int; width_P : int; height_P : int;
      fixedsamplelocations_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexStorage2DMultisample");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (samples_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Tuple_SetItem (Args, 5, Long_FromLong (fixedsamplelocations_P));
      Result := Object_CallObject (Method, Args, True);
   end glTexStorage2DMultisample;
   procedure glTexStorage3D
     (self    : access Inst; target_P : int; levels_P : int; internalformat_P : int; width_P : int; height_P : int;
      depth_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexStorage3D");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (levels_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Tuple_SetItem (Args, 5, Long_FromLong (depth_P));
      Result := Object_CallObject (Method, Args, True);
   end glTexStorage3D;
   procedure glTexStorage3DMultisample
     (self    : access Inst; target_P : int; samples_P : int; internalformat_P : int; width_P : int; height_P : int;
      depth_P : int; fixedsamplelocations_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexStorage3DMultisample");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (samples_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Tuple_SetItem (Args, 5, Long_FromLong (depth_P));
      Tuple_SetItem (Args, 6, Long_FromLong (fixedsamplelocations_P));
      Result := Object_CallObject (Method, Args, True);
   end glTexStorage3DMultisample;
   procedure glTexSubImage3D
     (self    : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; zoffset_P : int;
      width_P : int; height_P : int; depth_P : int; format_P : int; type_K_P : int; pixels_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexSubImage3D");
      Args   := Tuple_New (11);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (xoffset_P));
      Tuple_SetItem (Args, 3, Long_FromLong (yoffset_P));
      Tuple_SetItem (Args, 4, Long_FromLong (zoffset_P));
      Tuple_SetItem (Args, 5, Long_FromLong (width_P));
      Tuple_SetItem (Args, 6, Long_FromLong (height_P));
      Tuple_SetItem (Args, 7, Long_FromLong (depth_P));
      Tuple_SetItem (Args, 8, Long_FromLong (format_P));
      Tuple_SetItem (Args, 9, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 10, Long_FromLong (pixels_P));
      Result := Object_CallObject (Method, Args, True);
   end glTexSubImage3D;
   procedure glUniform1ui (self : access Inst; location_P : int; v0_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform1ui");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (v0_P));
      Result := Object_CallObject (Method, Args, True);
   end glUniform1ui;
   procedure glUniform1uiv (self : access Inst; location_P : int; count_P : int; value_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform1uiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniform1uiv;
   procedure glUniform2ui (self : access Inst; location_P : int; v0_P : int; v1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform2ui");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v1_P));
      Result := Object_CallObject (Method, Args, True);
   end glUniform2ui;
   procedure glUniform2uiv (self : access Inst; location_P : int; count_P : int; value_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform2uiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniform2uiv;
   procedure glUniform3ui (self : access Inst; location_P : int; v0_P : int; v1_P : int; v2_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform3ui");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v1_P));
      Tuple_SetItem (Args, 3, Long_FromLong (v2_P));
      Result := Object_CallObject (Method, Args, True);
   end glUniform3ui;
   procedure glUniform3uiv (self : access Inst; location_P : int; count_P : int; value_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform3uiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniform3uiv;
   procedure glUniform4ui (self : access Inst; location_P : int; v0_P : int; v1_P : int; v2_P : int; v3_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform4ui");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (v0_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v1_P));
      Tuple_SetItem (Args, 3, Long_FromLong (v2_P));
      Tuple_SetItem (Args, 4, Long_FromLong (v3_P));
      Result := Object_CallObject (Method, Args, True);
   end glUniform4ui;
   procedure glUniform4uiv (self : access Inst; location_P : int; count_P : int; value_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform4uiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniform4uiv;
   procedure glUniformBlockBinding
     (self : access Inst; program_P : int; uniformBlockIndex_P : int; uniformBlockBinding_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformBlockBinding");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (uniformBlockIndex_P));
      Tuple_SetItem (Args, 2, Long_FromLong (uniformBlockBinding_P));
      Result := Object_CallObject (Method, Args, True);
   end glUniformBlockBinding;
   procedure glUniformMatrix2x3fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix2x3fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniformMatrix2x3fv;
   procedure glUniformMatrix2x4fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix2x4fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniformMatrix2x4fv;
   procedure glUniformMatrix3x2fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix3x2fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniformMatrix3x2fv;
   procedure glUniformMatrix3x4fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix3x4fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniformMatrix3x4fv;
   procedure glUniformMatrix4x2fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix4x2fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniformMatrix4x2fv;
   procedure glUniformMatrix4x3fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix4x3fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glUniformMatrix4x3fv;
   function glUnmapBuffer (self : access Inst; target_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUnmapBuffer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end glUnmapBuffer;
   procedure glUseProgramStages (self : access Inst; pipeline_P : int; stages_P : int; program_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUseProgramStages");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (pipeline_P));
      Tuple_SetItem (Args, 1, Long_FromLong (stages_P));
      Tuple_SetItem (Args, 2, Long_FromLong (program_P));
      Result := Object_CallObject (Method, Args, True);
   end glUseProgramStages;
   procedure glValidateProgramPipeline (self : access Inst; pipeline_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glValidateProgramPipeline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pipeline_P));
      Result := Object_CallObject (Method, Args, True);
   end glValidateProgramPipeline;
   procedure glVertexAttribBinding (self : access Inst; attribindex_P : int; bindingindex_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribBinding");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (attribindex_P));
      Tuple_SetItem (Args, 1, Long_FromLong (bindingindex_P));
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribBinding;
   procedure glVertexAttribDivisor (self : access Inst; index_P : int; divisor_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribDivisor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (divisor_P));
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribDivisor;
   procedure glVertexAttribFormat
     (self : access Inst; attribindex_P : int; size_P : int; type_K_P : int; normalized_P : int; relativeoffset_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribFormat");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (attribindex_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (normalized_P));
      Tuple_SetItem (Args, 4, Long_FromLong (relativeoffset_P));
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribFormat;
   procedure glVertexAttribI4i (self : access Inst; index_P : int; x_P : int; y_P : int; z_P : int; w_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribI4i");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (z_P));
      Tuple_SetItem (Args, 4, Long_FromLong (w_P));
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribI4i;
   procedure glVertexAttribI4iv (self : access Inst; index_P : int; v_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribI4iv");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribI4iv;
   procedure glVertexAttribI4ui (self : access Inst; index_P : int; x_P : int; y_P : int; z_P : int; w_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribI4ui");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (z_P));
      Tuple_SetItem (Args, 4, Long_FromLong (w_P));
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribI4ui;
   procedure glVertexAttribI4uiv (self : access Inst; index_P : int; v_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribI4uiv");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribI4uiv;
   procedure glVertexAttribIFormat
     (self : access Inst; attribindex_P : int; size_P : int; type_K_P : int; relativeoffset_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribIFormat");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (attribindex_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (relativeoffset_P));
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribIFormat;
   procedure glVertexAttribIPointer
     (self : access Inst; index_P : int; size_P : int; type_K_P : int; stride_P : int; pointer_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribIPointer");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (stride_P));
      Tuple_SetItem (Args, 4, Long_FromLong (pointer_P));
      Result := Object_CallObject (Method, Args, True);
   end glVertexAttribIPointer;
   procedure glVertexBindingDivisor (self : access Inst; bindingindex_P : int; divisor_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexBindingDivisor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (bindingindex_P));
      Tuple_SetItem (Args, 1, Long_FromLong (divisor_P));
      Result := Object_CallObject (Method, Args, True);
   end glVertexBindingDivisor;
end QtAda6.QtGui.QOpenGLExtraFunctions;
