-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qopenglfunctions-openglfeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.Flag;
package QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.Flag.Inst with null record;
procedure Finalize (Self : in out Class);
Multitexture:QOpenGLFunctions.OpenGLFeature.Class;-- 0x1
Shaders:QOpenGLFunctions.OpenGLFeature.Class;-- 0x2
Buffers:QOpenGLFunctions.OpenGLFeature.Class;-- 0x4
Framebuffers:QOpenGLFunctions.OpenGLFeature.Class;-- 0x8
BlendColor:QOpenGLFunctions.OpenGLFeature.Class;-- 0x10
BlendEquation:QOpenGLFunctions.OpenGLFeature.Class;-- 0x20
BlendEquationSeparate:QOpenGLFunctions.OpenGLFeature.Class;-- 0x40
BlendFuncSeparate:QOpenGLFunctions.OpenGLFeature.Class;-- 0x80
BlendSubtract:QOpenGLFunctions.OpenGLFeature.Class;-- 0x100
CompressedTextures:QOpenGLFunctions.OpenGLFeature.Class;-- 0x200
Multisample:QOpenGLFunctions.OpenGLFeature.Class;-- 0x400
StencilSeparate:QOpenGLFunctions.OpenGLFeature.Class;-- 0x800
NPOTTextures:QOpenGLFunctions.OpenGLFeature.Class;-- 0x1000
NPOTTextureRepeat:QOpenGLFunctions.OpenGLFeature.Class;-- 0x2000
FixedFunctionPipeline:QOpenGLFunctions.OpenGLFeature.Class;-- 0x4000
TextureRGFormats:QOpenGLFunctions.OpenGLFeature.Class;-- 0x8000
MultipleRenderTargets:QOpenGLFunctions.OpenGLFeature.Class;-- 0x10000
BlendEquationAdvanced:QOpenGLFunctions.OpenGLFeature.Class;-- 0x20000
end QtAda6.QtGui.QOpenGLFunctions.OpenGLFeature;
