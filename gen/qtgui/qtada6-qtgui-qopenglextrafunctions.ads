-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qopenglextrafunctions.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QOpenGLContext;
with QtAda6.QtGui.QOpenGLFunctions;
package QtAda6.QtGui.QOpenGLExtraFunctions is
   type Sequence_float is access Any;
   type Sequence_int is access Any;
   type Union_bool_List_Any is access Any;
   type Union_int_List_Any is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QOpenGLFunctions.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (context_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class) return Class;
   procedure glActiveShaderProgram (self : access Inst; pipeline_P : int; program_P : int);
   procedure glBeginQuery (self : access Inst; target_P : int; id_P : int);
   procedure glBeginTransformFeedback (self : access Inst; primitiveMode_P : int);
   procedure glBindBufferBase (self : access Inst; target_P : int; index_P : int; buffer_P : int);
   procedure glBindImageTexture
     (self       : access Inst; unit_P : int; texture_P : int; level_P : int; layered_P : int; layer_P : int;
      access_K_P : int; format_P : int);
   procedure glBindProgramPipeline (self : access Inst; pipeline_P : int);
   procedure glBindSampler (self : access Inst; unit_P : int; sampler_P : int);
   procedure glBindTransformFeedback (self : access Inst; target_P : int; id_P : int);
   procedure glBindVertexArray (self : access Inst; array_K_P : int);
   procedure glBlendBarrier (self : access Inst);
   procedure glBlendEquationSeparatei (self : access Inst; buf_P : int; modeRGB_P : int; modeAlpha_P : int);
   procedure glBlendEquationi (self : access Inst; buf_P : int; mode_P : int);
   procedure glBlendFuncSeparatei
     (self : access Inst; buf_P : int; srcRGB_P : int; dstRGB_P : int; srcAlpha_P : int; dstAlpha_P : int);
   procedure glBlendFunci (self : access Inst; buf_P : int; src_P : int; dst_P : int);
   procedure glBlitFramebuffer
     (self    : access Inst; srcX0_P : int; srcY0_P : int; srcX1_P : int; srcY1_P : int; dstX0_P : int; dstY0_P : int;
      dstX1_P : int; dstY1_P : int; mask_P : int; filter_P : int);
   procedure glClearBufferfi (self : access Inst; buffer_P : int; drawbuffer_P : int; depth_P : float; stencil_P : int);
   procedure glClearBufferfv (self : access Inst; buffer_P : int; drawbuffer_P : int; value_P : Sequence_float);
   procedure glClearBufferiv (self : access Inst; buffer_P : int; drawbuffer_P : int; value_P : Sequence_int);
   procedure glClearBufferuiv (self : access Inst; buffer_P : int; drawbuffer_P : int; value_P : Sequence_int);
   procedure glColorMaski (self : access Inst; index_P : int; r_P : int; g_P : int; b_P : int; a_P : int);
   procedure glCompressedTexImage3D
     (self    : access Inst; target_P : int; level_P : int; internalformat_P : int; width_P : int; height_P : int;
      depth_P : int; border_P : int; imageSize_P : int; data_P : int);
   procedure glCompressedTexSubImage3D
     (self    : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; zoffset_P : int;
      width_P : int; height_P : int; depth_P : int; format_P : int; imageSize_P : int; data_P : int);
   procedure glCopyImageSubData
     (self       : access Inst; srcName_P : int; srcTarget_P : int; srcLevel_P : int; srcX_P : int; srcY_P : int;
      srcZ_P     : int; dstName_P : int; dstTarget_P : int; dstLevel_P : int; dstX_P : int; dstY_P : int; dstZ_P : int;
      srcWidth_P : int; srcHeight_P : int; srcDepth_P : int);
   procedure glCopyTexSubImage3D
     (self : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; zoffset_P : int; x_P : int;
      y_P  : int; width_P : int; height_P : int);
   procedure glDebugMessageControl
     (self      : access Inst; source_P : int; type_K_P : int; severity_P : int; count_P : int; ids_P : Sequence_int;
      enabled_P : int);
   procedure glDebugMessageInsert
     (self : access Inst; source_P : int; type_K_P : int; id_P : int; severity_P : int; length_P : int; buf_P : bytes);
   procedure glDeleteProgramPipelines (self : access Inst; n_P : int; pipelines_P : Sequence_int);
   procedure glDeleteQueries (self : access Inst; n_P : int; ids_P : Sequence_int);
   procedure glDeleteSamplers (self : access Inst; count_P : int; samplers_P : Sequence_int);
   procedure glDeleteTransformFeedbacks (self : access Inst; n_P : int; ids_P : Sequence_int);
   procedure glDeleteVertexArrays (self : access Inst; n_P : int; arrays_P : Sequence_int);
   procedure glDisablei (self : access Inst; target_P : int; index_P : int);
   procedure glDispatchCompute (self : access Inst; num_groups_x_P : int; num_groups_y_P : int; num_groups_z_P : int);
   procedure glDrawArraysIndirect (self : access Inst; mode_P : int; indirect_P : int);
   procedure glDrawArraysInstanced
     (self : access Inst; mode_P : int; first_P : int; count_P : int; instancecount_P : int);
   procedure glDrawBuffers (self : access Inst; n_P : int; bufs_P : Sequence_int);
   procedure glDrawElementsBaseVertex
     (self : access Inst; mode_P : int; count_P : int; type_K_P : int; indices_P : int; basevertex_P : int);
   procedure glDrawElementsIndirect (self : access Inst; mode_P : int; type_K_P : int; indirect_P : int);
   procedure glDrawElementsInstanced
     (self : access Inst; mode_P : int; count_P : int; type_K_P : int; indices_P : int; instancecount_P : int);
   procedure glDrawElementsInstancedBaseVertex
     (self         : access Inst; mode_P : int; count_P : int; type_K_P : int; indices_P : int; instancecount_P : int;
      basevertex_P : int);
   procedure glDrawRangeElements
     (self : access Inst; mode_P : int; start_P : int; end_K_P : int; count_P : int; type_K_P : int; indices_P : int);
   procedure glDrawRangeElementsBaseVertex
     (self : access Inst; mode_P : int; start_P : int; end_K_P : int; count_P : int; type_K_P : int; indices_P : int;
      basevertex_P : int);
   procedure glEnablei (self : access Inst; target_P : int; index_P : int);
   procedure glEndQuery (self : access Inst; target_P : int);
   procedure glFramebufferParameteri (self : access Inst; target_P : int; pname_P : int; param_P : int);
   procedure glFramebufferTexture
     (self : access Inst; target_P : int; attachment_P : int; texture_P : int; level_P : int);
   procedure glFramebufferTextureLayer
     (self : access Inst; target_P : int; attachment_P : int; texture_P : int; level_P : int; layer_P : int);
   procedure glGenProgramPipelines (self : access Inst; n_P : int; pipelines_P : Sequence_int);
   procedure glGenQueries (self : access Inst; n_P : int; ids_P : Sequence_int);
   procedure glGenSamplers (self : access Inst; count_P : int; samplers_P : Sequence_int);
   procedure glGenTransformFeedbacks (self : access Inst; n_P : int; ids_P : Sequence_int);
   procedure glGenVertexArrays (self : access Inst; n_P : int; arrays_P : Sequence_int);
   procedure glGetActiveUniformBlockiv
     (self : access Inst; program_P : int; uniformBlockIndex_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetActiveUniformsiv
     (self     : access Inst; program_P : int; uniformCount_P : int; uniformIndices_P : Sequence_int; pname_P : int;
      params_P : Sequence_int);
   function glGetBooleani_v (self : access Inst; target_P : int; index_P : int) return Union_bool_List_Any;
   function glGetFragDataLocation (self : access Inst; program_P : int; name_P : bytes) return int;
   procedure glGetFramebufferParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int);
   function glGetGraphicsResetStatus (self : access Inst) return int;
   function glGetIntegeri_v (self : access Inst; arg_1_P : int; arg_2_P : int) return Union_int_List_Any;
   procedure glGetIntegeri_v (self : access Inst; target_P : int; index_P : int; data_P : Sequence_int);
   procedure glGetInternalformativ
     (self     : access Inst; target_P : int; internalformat_P : int; pname_P : int; bufSize_P : int;
      params_P : Sequence_int);
   procedure glGetMultisamplefv (self : access Inst; pname_P : int; index_P : int; val_P : Sequence_float);
   procedure glGetProgramInterfaceiv
     (self : access Inst; program_P : int; programInterface_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetProgramPipelineiv (self : access Inst; pipeline_P : int; pname_P : int; params_P : Sequence_int);
   function glGetProgramResourceIndex
     (self : access Inst; program_P : int; programInterface_P : int; name_P : bytes) return int;
   function glGetProgramResourceLocation
     (self : access Inst; program_P : int; programInterface_P : int; name_P : bytes) return int;
   procedure glGetProgramResourceiv
     (self    : access Inst; program_P : int; programInterface_P : int; index_P : int; propCount_P : int;
      props_P : Sequence_int; bufSize_P : int; length_P : Sequence_int; params_P : Sequence_int);
   procedure glGetQueryObjectuiv (self : access Inst; id_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetQueryiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetSamplerParameterIiv (self : access Inst; sampler_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetSamplerParameterIuiv (self : access Inst; sampler_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetSamplerParameterfv (self : access Inst; sampler_P : int; pname_P : int; params_P : Sequence_float);
   procedure glGetSamplerParameteriv (self : access Inst; sampler_P : int; pname_P : int; params_P : Sequence_int);
   function glGetStringi (self : access Inst; name_P : int; index_P : int) return str;
   procedure glGetTexLevelParameterfv
     (self : access Inst; target_P : int; level_P : int; pname_P : int; params_P : Sequence_float);
   procedure glGetTexLevelParameteriv
     (self : access Inst; target_P : int; level_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetTexParameterIiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetTexParameterIuiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int);
   function glGetUniformBlockIndex (self : access Inst; program_P : int; uniformBlockName_P : bytes) return int;
   procedure glGetUniformuiv (self : access Inst; program_P : int; location_P : int; params_P : Sequence_int);
   procedure glGetVertexAttribIiv (self : access Inst; index_P : int; pname_P : int; params_P : Sequence_int);
   procedure glGetVertexAttribIuiv (self : access Inst; index_P : int; pname_P : int; params_P : Sequence_int);
   function glGetnUniformfv (self : access Inst; program_P : int; location_P : int; bufSize_P : int) return float;
   procedure glGetnUniformiv
     (self : access Inst; program_P : int; location_P : int; bufSize_P : int; params_P : Sequence_int);
   procedure glGetnUniformuiv
     (self : access Inst; program_P : int; location_P : int; bufSize_P : int; params_P : Sequence_int);
   procedure glInvalidateFramebuffer
     (self : access Inst; target_P : int; numAttachments_P : int; attachments_P : Sequence_int);
   procedure glInvalidateSubFramebuffer
     (self    : access Inst; target_P : int; numAttachments_P : int; attachments_P : Sequence_int; x_P : int; y_P : int;
      width_P : int; height_P : int);
   function glIsEnabledi (self : access Inst; target_P : int; index_P : int) return int;
   function glIsProgramPipeline (self : access Inst; pipeline_P : int) return int;
   function glIsQuery (self : access Inst; id_P : int) return int;
   function glIsSampler (self : access Inst; sampler_P : int) return int;
   function glIsTransformFeedback (self : access Inst; id_P : int) return int;
   function glIsVertexArray (self : access Inst; array_K_P : int) return int;
   procedure glMemoryBarrier (self : access Inst; barriers_P : int);
   procedure glMemoryBarrierByRegion (self : access Inst; barriers_P : int);
   procedure glMinSampleShading (self : access Inst; value_P : float);
   procedure glObjectLabel (self : access Inst; identifier_P : int; name_P : int; length_P : int; label_P : bytes);
   procedure glObjectPtrLabel (self : access Inst; ptr_P : int; length_P : int; label_P : bytes);
   procedure glPatchParameteri (self : access Inst; pname_P : int; value_P : int);
   procedure glPopDebugGroup (self : access Inst);
   procedure glPrimitiveBoundingBox
     (self   : access Inst; minX_P : float; minY_P : float; minZ_P : float; minW_P : float; maxX_P : float;
      maxY_P : float; maxZ_P : float; maxW_P : float);
   procedure glProgramBinary
     (self : access Inst; program_P : int; binaryFormat_P : int; binary_P : int; length_P : int);
   procedure glProgramParameteri (self : access Inst; program_P : int; pname_P : int; value_P : int);
   procedure glProgramUniform1f (self : access Inst; program_P : int; location_P : int; v0_P : float);
   procedure glProgramUniform1fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_float);
   procedure glProgramUniform1i (self : access Inst; program_P : int; location_P : int; v0_P : int);
   procedure glProgramUniform1iv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glProgramUniform1ui (self : access Inst; program_P : int; location_P : int; v0_P : int);
   procedure glProgramUniform1uiv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glProgramUniform2f (self : access Inst; program_P : int; location_P : int; v0_P : float; v1_P : float);
   procedure glProgramUniform2fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_float);
   procedure glProgramUniform2i (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int);
   procedure glProgramUniform2iv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glProgramUniform2ui (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int);
   procedure glProgramUniform2uiv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glProgramUniform3f
     (self : access Inst; program_P : int; location_P : int; v0_P : float; v1_P : float; v2_P : float);
   procedure glProgramUniform3fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_float);
   procedure glProgramUniform3i
     (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int; v2_P : int);
   procedure glProgramUniform3iv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glProgramUniform3ui
     (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int; v2_P : int);
   procedure glProgramUniform3uiv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glProgramUniform4f
     (self : access Inst; program_P : int; location_P : int; v0_P : float; v1_P : float; v2_P : float; v3_P : float);
   procedure glProgramUniform4fv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_float);
   procedure glProgramUniform4i
     (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int; v2_P : int; v3_P : int);
   procedure glProgramUniform4iv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glProgramUniform4ui
     (self : access Inst; program_P : int; location_P : int; v0_P : int; v1_P : int; v2_P : int; v3_P : int);
   procedure glProgramUniform4uiv
     (self : access Inst; program_P : int; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glProgramUniformMatrix2fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glProgramUniformMatrix2x3fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glProgramUniformMatrix2x4fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glProgramUniformMatrix3fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glProgramUniformMatrix3x2fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glProgramUniformMatrix3x4fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glProgramUniformMatrix4fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glProgramUniformMatrix4x2fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glProgramUniformMatrix4x3fv
     (self    : access Inst; program_P : int; location_P : int; count_P : int; transpose_P : int;
      value_P : Sequence_float);
   procedure glPushDebugGroup (self : access Inst; source_P : int; id_P : int; length_P : int; message_P : bytes);
   procedure glReadBuffer (self : access Inst; mode_P : int);
   procedure glReadnPixels
     (self      : access Inst; x_P : int; y_P : int; width_P : int; height_P : int; format_P : int; type_K_P : int;
      bufSize_P : int; data_P : int);
   procedure glRenderbufferStorageMultisample
     (self : access Inst; target_P : int; samples_P : int; internalformat_P : int; width_P : int; height_P : int);
   procedure glSampleMaski (self : access Inst; maskNumber_P : int; mask_P : int);
   procedure glSamplerParameterIiv (self : access Inst; sampler_P : int; pname_P : int; param_P : Sequence_int);
   procedure glSamplerParameterIuiv (self : access Inst; sampler_P : int; pname_P : int; param_P : Sequence_int);
   procedure glSamplerParameterf (self : access Inst; sampler_P : int; pname_P : int; param_P : float);
   procedure glSamplerParameterfv (self : access Inst; sampler_P : int; pname_P : int; param_P : Sequence_float);
   procedure glSamplerParameteri (self : access Inst; sampler_P : int; pname_P : int; param_P : int);
   procedure glSamplerParameteriv (self : access Inst; sampler_P : int; pname_P : int; param_P : Sequence_int);
   procedure glTexBuffer (self : access Inst; target_P : int; internalformat_P : int; buffer_P : int);
   procedure glTexImage3D
     (self    : access Inst; target_P : int; level_P : int; internalformat_P : int; width_P : int; height_P : int;
      depth_P : int; border_P : int; format_P : int; type_K_P : int; pixels_P : int);
   procedure glTexParameterIiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int);
   procedure glTexParameterIuiv (self : access Inst; target_P : int; pname_P : int; params_P : Sequence_int);
   procedure glTexStorage2D
     (self : access Inst; target_P : int; levels_P : int; internalformat_P : int; width_P : int; height_P : int);
   procedure glTexStorage2DMultisample
     (self : access Inst; target_P : int; samples_P : int; internalformat_P : int; width_P : int; height_P : int;
      fixedsamplelocations_P : int);
   procedure glTexStorage3D
     (self    : access Inst; target_P : int; levels_P : int; internalformat_P : int; width_P : int; height_P : int;
      depth_P : int);
   procedure glTexStorage3DMultisample
     (self    : access Inst; target_P : int; samples_P : int; internalformat_P : int; width_P : int; height_P : int;
      depth_P : int; fixedsamplelocations_P : int);
   procedure glTexSubImage3D
     (self    : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; zoffset_P : int;
      width_P : int; height_P : int; depth_P : int; format_P : int; type_K_P : int; pixels_P : int);
   procedure glUniform1ui (self : access Inst; location_P : int; v0_P : int);
   procedure glUniform1uiv (self : access Inst; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glUniform2ui (self : access Inst; location_P : int; v0_P : int; v1_P : int);
   procedure glUniform2uiv (self : access Inst; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glUniform3ui (self : access Inst; location_P : int; v0_P : int; v1_P : int; v2_P : int);
   procedure glUniform3uiv (self : access Inst; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glUniform4ui (self : access Inst; location_P : int; v0_P : int; v1_P : int; v2_P : int; v3_P : int);
   procedure glUniform4uiv (self : access Inst; location_P : int; count_P : int; value_P : Sequence_int);
   procedure glUniformBlockBinding
     (self : access Inst; program_P : int; uniformBlockIndex_P : int; uniformBlockBinding_P : int);
   procedure glUniformMatrix2x3fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float);
   procedure glUniformMatrix2x4fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float);
   procedure glUniformMatrix3x2fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float);
   procedure glUniformMatrix3x4fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float);
   procedure glUniformMatrix4x2fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float);
   procedure glUniformMatrix4x3fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : Sequence_float);
   function glUnmapBuffer (self : access Inst; target_P : int) return int;
   procedure glUseProgramStages (self : access Inst; pipeline_P : int; stages_P : int; program_P : int);
   procedure glValidateProgramPipeline (self : access Inst; pipeline_P : int);
   procedure glVertexAttribBinding (self : access Inst; attribindex_P : int; bindingindex_P : int);
   procedure glVertexAttribDivisor (self : access Inst; index_P : int; divisor_P : int);
   procedure glVertexAttribFormat
     (self             : access Inst; attribindex_P : int; size_P : int; type_K_P : int; normalized_P : int;
      relativeoffset_P : int);
   procedure glVertexAttribI4i (self : access Inst; index_P : int; x_P : int; y_P : int; z_P : int; w_P : int);
   procedure glVertexAttribI4iv (self : access Inst; index_P : int; v_P : Sequence_int);
   procedure glVertexAttribI4ui (self : access Inst; index_P : int; x_P : int; y_P : int; z_P : int; w_P : int);
   procedure glVertexAttribI4uiv (self : access Inst; index_P : int; v_P : Sequence_int);
   procedure glVertexAttribIFormat
     (self : access Inst; attribindex_P : int; size_P : int; type_K_P : int; relativeoffset_P : int);
   procedure glVertexAttribIPointer
     (self : access Inst; index_P : int; size_P : int; type_K_P : int; stride_P : int; pointer_P : int);
   procedure glVertexBindingDivisor (self : access Inst; bindingindex_P : int; divisor_P : int);
end QtAda6.QtGui.QOpenGLExtraFunctions;
