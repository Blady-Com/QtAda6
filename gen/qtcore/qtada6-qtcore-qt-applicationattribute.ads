-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-applicationattribute.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.ApplicationAttribute is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   AA_DontShowIconsInMenus                    : Qt.ApplicationAttribute.Class;-- 0x2
   AA_NativeWindows                           : Qt.ApplicationAttribute.Class;-- 0x3
   AA_DontCreateNativeWidgetSiblings          : Qt.ApplicationAttribute.Class;-- 0x4
   AA_PluginApplication                       : Qt.ApplicationAttribute.Class;-- 0x5
   AA_DontUseNativeMenuBar                    : Qt.ApplicationAttribute.Class;-- 0x6
   AA_MacDontSwapCtrlAndMeta                  : Qt.ApplicationAttribute.Class;-- 0x7
   AA_Use96Dpi                                : Qt.ApplicationAttribute.Class;-- 0x8
   AA_DisableNativeVirtualKeyboard            : Qt.ApplicationAttribute.Class;-- 0x9
   AA_SynthesizeTouchForUnhandledMouseEvents  : Qt.ApplicationAttribute.Class;-- 0xb
   AA_SynthesizeMouseForUnhandledTouchEvents  : Qt.ApplicationAttribute.Class;-- 0xc
   AA_UseHighDpiPixmaps                       : Qt.ApplicationAttribute.Class;-- 0xd
   AA_ForceRasterWidgets                      : Qt.ApplicationAttribute.Class;-- 0xe
   AA_UseDesktopOpenGL                        : Qt.ApplicationAttribute.Class;-- 0xf
   AA_UseOpenGLES                             : Qt.ApplicationAttribute.Class;-- 0x10
   AA_UseSoftwareOpenGL                       : Qt.ApplicationAttribute.Class;-- 0x11
   AA_ShareOpenGLContexts                     : Qt.ApplicationAttribute.Class;-- 0x12
   AA_SetPalette                              : Qt.ApplicationAttribute.Class;-- 0x13
   AA_EnableHighDpiScaling                    : Qt.ApplicationAttribute.Class;-- 0x14
   AA_DisableHighDpiScaling                   : Qt.ApplicationAttribute.Class;-- 0x15
   AA_UseStyleSheetPropagationInWidgetStyles  : Qt.ApplicationAttribute.Class;-- 0x16
   AA_DontUseNativeDialogs                    : Qt.ApplicationAttribute.Class;-- 0x17
   AA_SynthesizeMouseForUnhandledTabletEvents : Qt.ApplicationAttribute.Class;-- 0x18
   AA_CompressHighFrequencyEvents             : Qt.ApplicationAttribute.Class;-- 0x19
   AA_DontCheckOpenGLContextThreadAffinity    : Qt.ApplicationAttribute.Class;-- 0x1a
   AA_DisableShaderDiskCache                  : Qt.ApplicationAttribute.Class;-- 0x1b
   AA_DontShowShortcutsInContextMenus         : Qt.ApplicationAttribute.Class;-- 0x1c
   AA_CompressTabletEvents                    : Qt.ApplicationAttribute.Class;-- 0x1d
   AA_DisableSessionManager                   : Qt.ApplicationAttribute.Class;-- 0x1f
   AA_AttributeCount                          : Qt.ApplicationAttribute.Class;-- 0x20
end QtAda6.QtCore.Qt.ApplicationAttribute;
