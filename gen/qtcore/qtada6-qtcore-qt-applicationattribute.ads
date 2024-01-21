-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-applicationattribute.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.ApplicationAttribute is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function AA_DontShowIconsInMenus return Class;-- 0x2
   function AA_NativeWindows return Class;-- 0x3
   function AA_DontCreateNativeWidgetSiblings return Class;-- 0x4
   function AA_PluginApplication return Class;-- 0x5
   function AA_DontUseNativeMenuBar return Class;-- 0x6
   function AA_MacDontSwapCtrlAndMeta return Class;-- 0x7
   function AA_Use96Dpi return Class;-- 0x8
   function AA_DisableNativeVirtualKeyboard return Class;-- 0x9
   function AA_SynthesizeTouchForUnhandledMouseEvents return Class;-- 0xb
   function AA_SynthesizeMouseForUnhandledTouchEvents return Class;-- 0xc
   function AA_UseHighDpiPixmaps return Class;-- 0xd
   function AA_ForceRasterWidgets return Class;-- 0xe
   function AA_UseDesktopOpenGL return Class;-- 0xf
   function AA_UseOpenGLES return Class;-- 0x10
   function AA_UseSoftwareOpenGL return Class;-- 0x11
   function AA_ShareOpenGLContexts return Class;-- 0x12
   function AA_SetPalette return Class;-- 0x13
   function AA_EnableHighDpiScaling return Class;-- 0x14
   function AA_DisableHighDpiScaling return Class;-- 0x15
   function AA_UseStyleSheetPropagationInWidgetStyles return Class;-- 0x16
   function AA_DontUseNativeDialogs return Class;-- 0x17
   function AA_SynthesizeMouseForUnhandledTabletEvents return Class;-- 0x18
   function AA_CompressHighFrequencyEvents return Class;-- 0x19
   function AA_DontCheckOpenGLContextThreadAffinity return Class;-- 0x1a
   function AA_DisableShaderDiskCache return Class;-- 0x1b
   function AA_DontShowShortcutsInContextMenus return Class;-- 0x1c
   function AA_CompressTabletEvents return Class;-- 0x1d
   function AA_DisableSessionManager return Class;-- 0x1f
   function AA_AttributeCount return Class;-- 0x20
end QtAda6.QtCore.Qt.ApplicationAttribute;
