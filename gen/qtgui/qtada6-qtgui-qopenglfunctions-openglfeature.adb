-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qopenglfunctions-openglfeature.adb
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
package body QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Multitexture return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Multitexture"));
   end Multitexture;
   function Shaders return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Shaders"));
   end Shaders;
   function Buffers return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Buffers"));
   end Buffers;
   function Framebuffers return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Framebuffers"));
   end Framebuffers;
   function BlendColor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlendColor"));
   end BlendColor;
   function BlendEquation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlendEquation"));
   end BlendEquation;
   function BlendEquationSeparate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlendEquationSeparate"));
   end BlendEquationSeparate;
   function BlendFuncSeparate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlendFuncSeparate"));
   end BlendFuncSeparate;
   function BlendSubtract return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlendSubtract"));
   end BlendSubtract;
   function CompressedTextures return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CompressedTextures"));
   end CompressedTextures;
   function Multisample return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Multisample"));
   end Multisample;
   function StencilSeparate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StencilSeparate"));
   end StencilSeparate;
   function NPOTTextures return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NPOTTextures"));
   end NPOTTextures;
   function NPOTTextureRepeat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NPOTTextureRepeat"));
   end NPOTTextureRepeat;
   function FixedFunctionPipeline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FixedFunctionPipeline"));
   end FixedFunctionPipeline;
   function TextureRGFormats return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextureRGFormats"));
   end TextureRGFormats;
   function MultipleRenderTargets return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MultipleRenderTargets"));
   end MultipleRenderTargets;
   function BlendEquationAdvanced return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLFunctions");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlendEquationAdvanced"));
   end BlendEquationAdvanced;
end QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature;
