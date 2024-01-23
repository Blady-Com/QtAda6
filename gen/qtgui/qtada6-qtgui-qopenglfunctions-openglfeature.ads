-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qopenglfunctions-openglfeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function Multitexture return Class;-- 0x1
   function Shaders return Class;-- 0x2
   function Buffers return Class;-- 0x4
   function Framebuffers return Class;-- 0x8
   function BlendColor return Class;-- 0x10
   function BlendEquation return Class;-- 0x20
   function BlendEquationSeparate return Class;-- 0x40
   function BlendFuncSeparate return Class;-- 0x80
   function BlendSubtract return Class;-- 0x100
   function CompressedTextures return Class;-- 0x200
   function Multisample return Class;-- 0x400
   function StencilSeparate return Class;-- 0x800
   function NPOTTextures return Class;-- 0x1000
   function NPOTTextureRepeat return Class;-- 0x2000
   function FixedFunctionPipeline return Class;-- 0x4000
   function TextureRGFormats return Class;-- 0x8000
   function MultipleRenderTargets return Class;-- 0x10000
   function BlendEquationAdvanced return Class;-- 0x20000
end QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature;
