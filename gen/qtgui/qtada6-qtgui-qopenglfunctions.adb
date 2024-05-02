-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qopenglfunctions.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QOpenGLContext;
with QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature;
package body QtAda6.QtGui.QOpenGLFunctions is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (context_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if context_P /= null then context_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure glActiveTexture (self : access Inst; texture_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glActiveTexture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (texture_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glActiveTexture;
   procedure glAttachShader (self : access Inst; program_P : int; shader_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glAttachShader");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (shader_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glAttachShader;
   procedure glBindAttribLocation (self : access Inst; program_P : int; index_P : int; name_P : bytes) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindAttribLocation");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (Standard.String (name_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBindAttribLocation;
   procedure glBindBuffer (self : access Inst; target_P : int; buffer_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindBuffer");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (buffer_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBindBuffer;
   procedure glBindFramebuffer (self : access Inst; target_P : int; framebuffer_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindFramebuffer");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (framebuffer_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBindFramebuffer;
   procedure glBindRenderbuffer (self : access Inst; target_P : int; renderbuffer_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindRenderbuffer");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (renderbuffer_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBindRenderbuffer;
   procedure glBindTexture (self : access Inst; target_P : int; texture_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBindTexture");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (texture_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBindTexture;
   procedure glBlendColor (self : access Inst; red_P : float; green_P : float; blue_P : float; alpha_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendColor");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (red_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (green_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (blue_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (alpha_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBlendColor;
   procedure glBlendEquation (self : access Inst; mode_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendEquation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBlendEquation;
   procedure glBlendEquationSeparate (self : access Inst; modeRGB_P : int; modeAlpha_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendEquationSeparate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (modeRGB_P));
      Tuple_SetItem (Args, 1, Long_FromLong (modeAlpha_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBlendEquationSeparate;
   procedure glBlendFunc (self : access Inst; sfactor_P : int; dfactor_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendFunc");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (sfactor_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dfactor_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBlendFunc;
   procedure glBlendFuncSeparate
     (self : access Inst; srcRGB_P : int; dstRGB_P : int; srcAlpha_P : int; dstAlpha_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glBlendFuncSeparate");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (srcRGB_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dstRGB_P));
      Tuple_SetItem (Args, 2, Long_FromLong (srcAlpha_P));
      Tuple_SetItem (Args, 3, Long_FromLong (dstAlpha_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glBlendFuncSeparate;
   function glCheckFramebufferStatus (self : access Inst; target_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCheckFramebufferStatus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glCheckFramebufferStatus;
   procedure glClear (self : access Inst; mask_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glClear");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mask_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glClear;
   procedure glClearColor (self : access Inst; red_P : float; green_P : float; blue_P : float; alpha_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glClearColor");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (red_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (green_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (blue_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (alpha_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glClearColor;
   procedure glClearDepthf (self : access Inst; depth_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glClearDepthf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (depth_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glClearDepthf;
   procedure glClearStencil (self : access Inst; s_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glClearStencil");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (s_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glClearStencil;
   procedure glColorMask (self : access Inst; red_P : int; green_P : int; blue_P : int; alpha_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glColorMask");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (red_P));
      Tuple_SetItem (Args, 1, Long_FromLong (green_P));
      Tuple_SetItem (Args, 2, Long_FromLong (blue_P));
      Tuple_SetItem (Args, 3, Long_FromLong (alpha_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glColorMask;
   procedure glCompileShader (self : access Inst; shader_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCompileShader");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (shader_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glCompileShader;
   procedure glCompressedTexImage2D
     (self     : access Inst; target_P : int; level_P : int; internalformat_P : int; width_P : int; height_P : int;
      border_P : int; imageSize_P : int; data_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCompressedTexImage2D");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Tuple_SetItem (Args, 5, Long_FromLong (border_P));
      Tuple_SetItem (Args, 6, Long_FromLong (imageSize_P));
      Tuple_SetItem (Args, 7, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glCompressedTexImage2D;
   procedure glCompressedTexSubImage2D
     (self     : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; width_P : int;
      height_P : int; format_P : int; imageSize_P : int; data_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCompressedTexSubImage2D");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (xoffset_P));
      Tuple_SetItem (Args, 3, Long_FromLong (yoffset_P));
      Tuple_SetItem (Args, 4, Long_FromLong (width_P));
      Tuple_SetItem (Args, 5, Long_FromLong (height_P));
      Tuple_SetItem (Args, 6, Long_FromLong (format_P));
      Tuple_SetItem (Args, 7, Long_FromLong (imageSize_P));
      Tuple_SetItem (Args, 8, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glCompressedTexSubImage2D;
   procedure glCopyTexImage2D
     (self : access Inst; target_P : int; level_P : int; internalformat_P : int; x_P : int; y_P : int; width_P : int;
      height_P : int; border_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCopyTexImage2D");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (x_P));
      Tuple_SetItem (Args, 4, Long_FromLong (y_P));
      Tuple_SetItem (Args, 5, Long_FromLong (width_P));
      Tuple_SetItem (Args, 6, Long_FromLong (height_P));
      Tuple_SetItem (Args, 7, Long_FromLong (border_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glCopyTexImage2D;
   procedure glCopyTexSubImage2D
     (self    : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; x_P : int; y_P : int;
      width_P : int; height_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCopyTexSubImage2D");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (xoffset_P));
      Tuple_SetItem (Args, 3, Long_FromLong (yoffset_P));
      Tuple_SetItem (Args, 4, Long_FromLong (x_P));
      Tuple_SetItem (Args, 5, Long_FromLong (y_P));
      Tuple_SetItem (Args, 6, Long_FromLong (width_P));
      Tuple_SetItem (Args, 7, Long_FromLong (height_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glCopyTexSubImage2D;
   function glCreateProgram (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCreateProgram");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glCreateProgram;
   function glCreateShader (self : access Inst; type_K_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCreateShader");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glCreateShader;
   procedure glCullFace (self : access Inst; mode_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glCullFace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glCullFace;
   procedure glDeleteBuffers (self : access Inst; n_P : int; buffers_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteBuffers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (buffers_P'Length);
      for ind in buffers_P'Range loop
         List_SetItem (List, ssize_t (ind - buffers_P'First), Long_FromLong (buffers_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDeleteBuffers;
   procedure glDeleteFramebuffers (self : access Inst; n_P : int; framebuffers_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteFramebuffers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (framebuffers_P'Length);
      for ind in framebuffers_P'Range loop
         List_SetItem (List, ssize_t (ind - framebuffers_P'First), Long_FromLong (framebuffers_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDeleteFramebuffers;
   procedure glDeleteProgram (self : access Inst; program_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteProgram");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDeleteProgram;
   procedure glDeleteRenderbuffers (self : access Inst; n_P : int; renderbuffers_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteRenderbuffers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (renderbuffers_P'Length);
      for ind in renderbuffers_P'Range loop
         List_SetItem (List, ssize_t (ind - renderbuffers_P'First), Long_FromLong (renderbuffers_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDeleteRenderbuffers;
   procedure glDeleteShader (self : access Inst; shader_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteShader");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (shader_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDeleteShader;
   procedure glDeleteTextures (self : access Inst; n_P : int; textures_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDeleteTextures");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (textures_P'Length);
      for ind in textures_P'Range loop
         List_SetItem (List, ssize_t (ind - textures_P'First), Long_FromLong (textures_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDeleteTextures;
   procedure glDepthFunc (self : access Inst; func_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDepthFunc");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (func_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDepthFunc;
   procedure glDepthMask (self : access Inst; flag_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDepthMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (flag_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDepthMask;
   procedure glDepthRangef (self : access Inst; zNear_P : float; zFar_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDepthRangef");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (zNear_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (zFar_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDepthRangef;
   procedure glDetachShader (self : access Inst; program_P : int; shader_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDetachShader");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (shader_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDetachShader;
   procedure glDisable (self : access Inst; cap_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDisable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (cap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDisable;
   procedure glDisableVertexAttribArray (self : access Inst; index_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDisableVertexAttribArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDisableVertexAttribArray;
   procedure glDrawArrays (self : access Inst; mode_P : int; first_P : int; count_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawArrays");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDrawArrays;
   procedure glDrawElements (self : access Inst; mode_P : int; count_P : int; type_K_P : int; indices_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glDrawElements");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (indices_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glDrawElements;
   procedure glEnable (self : access Inst; cap_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glEnable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (cap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glEnable;
   procedure glEnableVertexAttribArray (self : access Inst; index_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glEnableVertexAttribArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glEnableVertexAttribArray;
   procedure glFinish (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glFinish");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glFinish;
   procedure glFlush (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glFlush");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glFlush;
   procedure glFramebufferRenderbuffer
     (self : access Inst; target_P : int; attachment_P : int; renderbuffertarget_P : int; renderbuffer_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glFramebufferRenderbuffer");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (attachment_P));
      Tuple_SetItem (Args, 2, Long_FromLong (renderbuffertarget_P));
      Tuple_SetItem (Args, 3, Long_FromLong (renderbuffer_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glFramebufferRenderbuffer;
   procedure glFramebufferTexture2D
     (self : access Inst; target_P : int; attachment_P : int; textarget_P : int; texture_P : int; level_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glFramebufferTexture2D");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (attachment_P));
      Tuple_SetItem (Args, 2, Long_FromLong (textarget_P));
      Tuple_SetItem (Args, 3, Long_FromLong (texture_P));
      Tuple_SetItem (Args, 4, Long_FromLong (level_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glFramebufferTexture2D;
   procedure glFrontFace (self : access Inst; mode_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glFrontFace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mode_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glFrontFace;
   procedure glGenBuffers (self : access Inst; n_P : int; buffers_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenBuffers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (buffers_P'Length);
      for ind in buffers_P'Range loop
         List_SetItem (List, ssize_t (ind - buffers_P'First), Long_FromLong (buffers_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGenBuffers;
   procedure glGenFramebuffers (self : access Inst; n_P : int; framebuffers_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenFramebuffers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (framebuffers_P'Length);
      for ind in framebuffers_P'Range loop
         List_SetItem (List, ssize_t (ind - framebuffers_P'First), Long_FromLong (framebuffers_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGenFramebuffers;
   procedure glGenRenderbuffers (self : access Inst; n_P : int; renderbuffers_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenRenderbuffers");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (renderbuffers_P'Length);
      for ind in renderbuffers_P'Range loop
         List_SetItem (List, ssize_t (ind - renderbuffers_P'First), Long_FromLong (renderbuffers_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGenRenderbuffers;
   procedure glGenTextures (self : access Inst; n_P : int; textures_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenTextures");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (textures_P'Length);
      for ind in textures_P'Range loop
         List_SetItem (List, ssize_t (ind - textures_P'First), Long_FromLong (textures_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGenTextures;
   procedure glGenerateMipmap (self : access Inst; target_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGenerateMipmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGenerateMipmap;
   procedure glGetAttachedShaders
     (self : access Inst; program_P : int; maxcount_P : int; count_P : SEQUENCE_int; shaders_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetAttachedShaders");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (maxcount_P));
      List := List_New (count_P'Length);
      for ind in count_P'Range loop
         List_SetItem (List, ssize_t (ind - count_P'First), Long_FromLong (count_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      List := List_New (shaders_P'Length);
      for ind in shaders_P'Range loop
         List_SetItem (List, ssize_t (ind - shaders_P'First), Long_FromLong (shaders_P (ind)));
      end loop;
      Tuple_SetItem (Args, 3, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetAttachedShaders;
   function glGetAttribLocation (self : access Inst; program_P : int; name_P : bytes) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetAttribLocation");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (name_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glGetAttribLocation;
   function glGetBooleanv (self : access Inst; pname_P : int) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetBooleanv");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pname_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end glGetBooleanv;
   procedure glGetBufferParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetBufferParameteriv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetBufferParameteriv;
   function glGetError (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetError");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glGetError;
   function glGetFloatv (self : access Inst; arg_1_P : int) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetFloatv");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end glGetFloatv;
   procedure glGetFloatv (self : access Inst; pname_P : int; params_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetFloatv");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Float_FromDouble (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetFloatv;
   procedure glGetFramebufferAttachmentParameteriv
     (self : access Inst; target_P : int; attachment_P : int; pname_P : int; params_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetFramebufferAttachmentParameteriv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (attachment_P));
      Tuple_SetItem (Args, 2, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 3, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetFramebufferAttachmentParameteriv;
   function glGetIntegerv (self : access Inst; arg_1_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetIntegerv");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glGetIntegerv;
   procedure glGetIntegerv (self : access Inst; pname_P : int; params_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetIntegerv");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetIntegerv;
   procedure glGetProgramiv (self : access Inst; program_P : int; pname_P : int; params_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetProgramiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetProgramiv;
   procedure glGetRenderbufferParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetRenderbufferParameteriv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetRenderbufferParameteriv;
   procedure glGetShaderPrecisionFormat
     (self        : access Inst; shadertype_P : int; precisiontype_P : int; range_K_P : SEQUENCE_int;
      precision_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetShaderPrecisionFormat");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (shadertype_P));
      Tuple_SetItem (Args, 1, Long_FromLong (precisiontype_P));
      List := List_New (range_K_P'Length);
      for ind in range_K_P'Range loop
         List_SetItem (List, ssize_t (ind - range_K_P'First), Long_FromLong (range_K_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      List := List_New (precision_P'Length);
      for ind in precision_P'Range loop
         List_SetItem (List, ssize_t (ind - precision_P'First), Long_FromLong (precision_P (ind)));
      end loop;
      Tuple_SetItem (Args, 3, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetShaderPrecisionFormat;
   function glGetShaderSource (self : access Inst; shader_P : int) return bytes is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetShaderSource");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (shader_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return new Standard.String'(Bytes_AsString (Result));
   end glGetShaderSource;
   procedure glGetShaderiv (self : access Inst; shader_P : int; pname_P : int; params_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetShaderiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (shader_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetShaderiv;
   function glGetString (self : access Inst; name_P : int) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end glGetString;
   procedure glGetTexParameterfv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetTexParameterfv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Float_FromDouble (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetTexParameterfv;
   procedure glGetTexParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetTexParameteriv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetTexParameteriv;
   function glGetUniformLocation (self : access Inst; program_P : int; name_P : bytes) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetUniformLocation");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (name_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glGetUniformLocation;
   procedure glGetUniformfv (self : access Inst; program_P : int; location_P : int; params_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetUniformfv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Float_FromDouble (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetUniformfv;
   procedure glGetUniformiv (self : access Inst; program_P : int; location_P : int; params_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetUniformiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Tuple_SetItem (Args, 1, Long_FromLong (location_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetUniformiv;
   procedure glGetVertexAttribfv (self : access Inst; index_P : int; pname_P : int; params_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetVertexAttribfv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Float_FromDouble (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetVertexAttribfv;
   procedure glGetVertexAttribiv (self : access Inst; index_P : int; pname_P : int; params_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glGetVertexAttribiv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glGetVertexAttribiv;
   procedure glHint (self : access Inst; target_P : int; mode_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glHint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (mode_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glHint;
   function glIsBuffer (self : access Inst; buffer_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsBuffer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (buffer_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glIsBuffer;
   function glIsEnabled (self : access Inst; cap_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (cap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glIsEnabled;
   function glIsFramebuffer (self : access Inst; framebuffer_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsFramebuffer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (framebuffer_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glIsFramebuffer;
   function glIsProgram (self : access Inst; program_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsProgram");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glIsProgram;
   function glIsRenderbuffer (self : access Inst; renderbuffer_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsRenderbuffer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (renderbuffer_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glIsRenderbuffer;
   function glIsShader (self : access Inst; shader_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsShader");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (shader_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glIsShader;
   function glIsTexture (self : access Inst; texture_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glIsTexture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (texture_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end glIsTexture;
   procedure glLineWidth (self : access Inst; width_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glLineWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glLineWidth;
   procedure glLinkProgram (self : access Inst; program_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glLinkProgram");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glLinkProgram;
   procedure glPixelStorei (self : access Inst; pname_P : int; param_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glPixelStorei");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 1, Long_FromLong (param_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glPixelStorei;
   procedure glPolygonOffset (self : access Inst; factor_P : float; units_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glPolygonOffset");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (units_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glPolygonOffset;
   procedure glReadPixels
     (self     : access Inst; x_P : int; y_P : int; width_P : int; height_P : int; format_P : int; type_K_P : int;
      pixels_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glReadPixels");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (width_P));
      Tuple_SetItem (Args, 3, Long_FromLong (height_P));
      Tuple_SetItem (Args, 4, Long_FromLong (format_P));
      Tuple_SetItem (Args, 5, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 6, Long_FromLong (pixels_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glReadPixels;
   procedure glReleaseShaderCompiler (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glReleaseShaderCompiler");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glReleaseShaderCompiler;
   procedure glRenderbufferStorage
     (self : access Inst; target_P : int; internalformat_P : int; width_P : int; height_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glRenderbufferStorage");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 2, Long_FromLong (width_P));
      Tuple_SetItem (Args, 3, Long_FromLong (height_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glRenderbufferStorage;
   procedure glSampleCoverage (self : access Inst; value_P : float; invert_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glSampleCoverage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Tuple_SetItem (Args, 1, Long_FromLong (invert_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glSampleCoverage;
   procedure glScissor (self : access Inst; x_P : int; y_P : int; width_P : int; height_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glScissor");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (width_P));
      Tuple_SetItem (Args, 3, Long_FromLong (height_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glScissor;
   procedure glShaderBinary
     (self : access Inst; n_P : int; shaders_P : SEQUENCE_int; binaryformat_P : int; binary_P : int; length_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glShaderBinary");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      List := List_New (shaders_P'Length);
      for ind in shaders_P'Range loop
         List_SetItem (List, ssize_t (ind - shaders_P'First), Long_FromLong (shaders_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, Long_FromLong (binaryformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (binary_P));
      Tuple_SetItem (Args, 4, Long_FromLong (length_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glShaderBinary;
   procedure glShaderSource (self : access Inst; shader_P : int; source_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glShaderSource");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (shader_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (source_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glShaderSource;
   procedure glStencilFunc (self : access Inst; func_P : int; ref_P : int; mask_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glStencilFunc");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (func_P));
      Tuple_SetItem (Args, 1, Long_FromLong (ref_P));
      Tuple_SetItem (Args, 2, Long_FromLong (mask_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glStencilFunc;
   procedure glStencilFuncSeparate (self : access Inst; face_P : int; func_P : int; ref_P : int; mask_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glStencilFuncSeparate");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (face_P));
      Tuple_SetItem (Args, 1, Long_FromLong (func_P));
      Tuple_SetItem (Args, 2, Long_FromLong (ref_P));
      Tuple_SetItem (Args, 3, Long_FromLong (mask_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glStencilFuncSeparate;
   procedure glStencilMask (self : access Inst; mask_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glStencilMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mask_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glStencilMask;
   procedure glStencilMaskSeparate (self : access Inst; face_P : int; mask_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glStencilMaskSeparate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (face_P));
      Tuple_SetItem (Args, 1, Long_FromLong (mask_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glStencilMaskSeparate;
   procedure glStencilOp (self : access Inst; fail_P : int; zfail_P : int; zpass_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glStencilOp");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (fail_P));
      Tuple_SetItem (Args, 1, Long_FromLong (zfail_P));
      Tuple_SetItem (Args, 2, Long_FromLong (zpass_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glStencilOp;
   procedure glStencilOpSeparate (self : access Inst; face_P : int; fail_P : int; zfail_P : int; zpass_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glStencilOpSeparate");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (face_P));
      Tuple_SetItem (Args, 1, Long_FromLong (fail_P));
      Tuple_SetItem (Args, 2, Long_FromLong (zfail_P));
      Tuple_SetItem (Args, 3, Long_FromLong (zpass_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glStencilOpSeparate;
   procedure glTexImage2D
     (self     : access Inst; target_P : int; level_P : int; internalformat_P : int; width_P : int; height_P : int;
      border_P : int; format_P : int; type_K_P : int; pixels_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexImage2D");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (internalformat_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Tuple_SetItem (Args, 4, Long_FromLong (height_P));
      Tuple_SetItem (Args, 5, Long_FromLong (border_P));
      Tuple_SetItem (Args, 6, Long_FromLong (format_P));
      Tuple_SetItem (Args, 7, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 8, Long_FromLong (pixels_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glTexImage2D;
   procedure glTexParameterf (self : access Inst; target_P : int; pname_P : int; param_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexParameterf");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (param_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glTexParameterf;
   procedure glTexParameterfv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexParameterfv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Float_FromDouble (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glTexParameterfv;
   procedure glTexParameteri (self : access Inst; target_P : int; pname_P : int; param_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexParameteri");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      Tuple_SetItem (Args, 2, Long_FromLong (param_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glTexParameteri;
   procedure glTexParameteriv (self : access Inst; target_P : int; pname_P : int; params_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexParameteriv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pname_P));
      List := List_New (params_P'Length);
      for ind in params_P'Range loop
         List_SetItem (List, ssize_t (ind - params_P'First), Long_FromLong (params_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glTexParameteriv;
   procedure glTexSubImage2D
     (self     : access Inst; target_P : int; level_P : int; xoffset_P : int; yoffset_P : int; width_P : int;
      height_P : int; format_P : int; type_K_P : int; pixels_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glTexSubImage2D");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Long_FromLong (target_P));
      Tuple_SetItem (Args, 1, Long_FromLong (level_P));
      Tuple_SetItem (Args, 2, Long_FromLong (xoffset_P));
      Tuple_SetItem (Args, 3, Long_FromLong (yoffset_P));
      Tuple_SetItem (Args, 4, Long_FromLong (width_P));
      Tuple_SetItem (Args, 5, Long_FromLong (height_P));
      Tuple_SetItem (Args, 6, Long_FromLong (format_P));
      Tuple_SetItem (Args, 7, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 8, Long_FromLong (pixels_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glTexSubImage2D;
   procedure glUniform1f (self : access Inst; location_P : int; x_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform1f");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform1f;
   procedure glUniform1fv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform1fv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      List := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem (List, ssize_t (ind - v_P'First), Float_FromDouble (v_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform1fv;
   procedure glUniform1i (self : access Inst; location_P : int; x_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform1i");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform1i;
   procedure glUniform1iv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform1iv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      List := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem (List, ssize_t (ind - v_P'First), Long_FromLong (v_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform1iv;
   procedure glUniform2f (self : access Inst; location_P : int; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform2f");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform2f;
   procedure glUniform2fv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform2fv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      List := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem (List, ssize_t (ind - v_P'First), Float_FromDouble (v_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform2fv;
   procedure glUniform2i (self : access Inst; location_P : int; x_P : int; y_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform2i");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform2i;
   procedure glUniform2iv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform2iv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      List := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem (List, ssize_t (ind - v_P'First), Long_FromLong (v_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform2iv;
   procedure glUniform3f (self : access Inst; location_P : int; x_P : float; y_P : float; z_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform3f");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (z_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform3f;
   procedure glUniform3fv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform3fv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      List := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem (List, ssize_t (ind - v_P'First), Float_FromDouble (v_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform3fv;
   procedure glUniform3i (self : access Inst; location_P : int; x_P : int; y_P : int; z_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform3i");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (z_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform3i;
   procedure glUniform3iv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform3iv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      List := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem (List, ssize_t (ind - v_P'First), Long_FromLong (v_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform3iv;
   procedure glUniform4f (self : access Inst; location_P : int; x_P : float; y_P : float; z_P : float; w_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform4f");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (z_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (w_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform4f;
   procedure glUniform4fv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform4fv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      List := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem (List, ssize_t (ind - v_P'First), Float_FromDouble (v_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform4fv;
   procedure glUniform4i (self : access Inst; location_P : int; x_P : int; y_P : int; z_P : int; w_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform4i");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (z_P));
      Tuple_SetItem (Args, 4, Long_FromLong (w_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform4i;
   procedure glUniform4iv (self : access Inst; location_P : int; count_P : int; v_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniform4iv");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      List := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem (List, ssize_t (ind - v_P'First), Long_FromLong (v_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniform4iv;
   procedure glUniformMatrix2fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : SEQUENCE_float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix2fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      List := List_New (value_P'Length);
      for ind in value_P'Range loop
         List_SetItem (List, ssize_t (ind - value_P'First), Float_FromDouble (value_P (ind)));
      end loop;
      Tuple_SetItem (Args, 3, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniformMatrix2fv;
   procedure glUniformMatrix3fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : SEQUENCE_float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix3fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      List := List_New (value_P'Length);
      for ind in value_P'Range loop
         List_SetItem (List, ssize_t (ind - value_P'First), Float_FromDouble (value_P (ind)));
      end loop;
      Tuple_SetItem (Args, 3, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniformMatrix3fv;
   procedure glUniformMatrix4fv
     (self : access Inst; location_P : int; count_P : int; transpose_P : int; value_P : SEQUENCE_float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUniformMatrix4fv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (location_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (transpose_P));
      List := List_New (value_P'Length);
      for ind in value_P'Range loop
         List_SetItem (List, ssize_t (ind - value_P'First), Float_FromDouble (value_P (ind)));
      end loop;
      Tuple_SetItem (Args, 3, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUniformMatrix4fv;
   procedure glUseProgram (self : access Inst; program_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glUseProgram");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glUseProgram;
   procedure glValidateProgram (self : access Inst; program_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glValidateProgram");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (program_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glValidateProgram;
   procedure glVertexAttrib1f (self : access Inst; indx_P : int; x_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttrib1f");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttrib1f;
   procedure glVertexAttrib1fv (self : access Inst; indx_P : int; values_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttrib1fv");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      List := List_New (values_P'Length);
      for ind in values_P'Range loop
         List_SetItem (List, ssize_t (ind - values_P'First), Float_FromDouble (values_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttrib1fv;
   procedure glVertexAttrib2f (self : access Inst; indx_P : int; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttrib2f");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttrib2f;
   procedure glVertexAttrib2fv (self : access Inst; indx_P : int; values_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttrib2fv");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      List := List_New (values_P'Length);
      for ind in values_P'Range loop
         List_SetItem (List, ssize_t (ind - values_P'First), Float_FromDouble (values_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttrib2fv;
   procedure glVertexAttrib3f (self : access Inst; indx_P : int; x_P : float; y_P : float; z_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttrib3f");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (z_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttrib3f;
   procedure glVertexAttrib3fv (self : access Inst; indx_P : int; values_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttrib3fv");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      List := List_New (values_P'Length);
      for ind in values_P'Range loop
         List_SetItem (List, ssize_t (ind - values_P'First), Float_FromDouble (values_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttrib3fv;
   procedure glVertexAttrib4f (self : access Inst; indx_P : int; x_P : float; y_P : float; z_P : float; w_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttrib4f");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (z_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (w_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttrib4f;
   procedure glVertexAttrib4fv (self : access Inst; indx_P : int; values_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttrib4fv");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      List := List_New (values_P'Length);
      for ind in values_P'Range loop
         List_SetItem (List, ssize_t (ind - values_P'First), Float_FromDouble (values_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttrib4fv;
   procedure glVertexAttribPointer
     (self : access Inst; indx_P : int; size_P : int; type_K_P : int; normalized_P : int; stride_P : int; ptr_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glVertexAttribPointer");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (indx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 3, Long_FromLong (normalized_P));
      Tuple_SetItem (Args, 4, Long_FromLong (stride_P));
      Tuple_SetItem (Args, 5, Long_FromLong (ptr_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glVertexAttribPointer;
   procedure glViewport (self : access Inst; x_P : int; y_P : int; width_P : int; height_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glViewport");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (width_P));
      Tuple_SetItem (Args, 3, Long_FromLong (height_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end glViewport;
   function hasOpenGLFeature
     (self : access Inst; feature_P : access QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasOpenGLFeature");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if feature_P /= null then feature_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasOpenGLFeature;
   procedure initializeOpenGLFunctions (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initializeOpenGLFunctions");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initializeOpenGLFunctions;
   function openGLFeatures (self : access Inst) return access QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature.Class :=
        new QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "openGLFeatures");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end openGLFeatures;
end QtAda6.QtGui.QOpenGLFunctions;
