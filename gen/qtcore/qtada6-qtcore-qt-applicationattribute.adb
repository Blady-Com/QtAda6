-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-applicationattribute.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.Qt.ApplicationAttribute is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AA_DontShowIconsInMenus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DontShowIconsInMenus"));
   end AA_DontShowIconsInMenus;
   function AA_NativeWindows return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_NativeWindows"));
   end AA_NativeWindows;
   function AA_DontCreateNativeWidgetSiblings return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DontCreateNativeWidgetSiblings"));
   end AA_DontCreateNativeWidgetSiblings;
   function AA_PluginApplication return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_PluginApplication"));
   end AA_PluginApplication;
   function AA_DontUseNativeMenuBar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DontUseNativeMenuBar"));
   end AA_DontUseNativeMenuBar;
   function AA_MacDontSwapCtrlAndMeta return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_MacDontSwapCtrlAndMeta"));
   end AA_MacDontSwapCtrlAndMeta;
   function AA_Use96Dpi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_Use96Dpi"));
   end AA_Use96Dpi;
   function AA_DisableNativeVirtualKeyboard return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DisableNativeVirtualKeyboard"));
   end AA_DisableNativeVirtualKeyboard;
   function AA_SynthesizeTouchForUnhandledMouseEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return
        new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_SynthesizeTouchForUnhandledMouseEvents"));
   end AA_SynthesizeTouchForUnhandledMouseEvents;
   function AA_SynthesizeMouseForUnhandledTouchEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return
        new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_SynthesizeMouseForUnhandledTouchEvents"));
   end AA_SynthesizeMouseForUnhandledTouchEvents;
   function AA_UseHighDpiPixmaps return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_UseHighDpiPixmaps"));
   end AA_UseHighDpiPixmaps;
   function AA_ForceRasterWidgets return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_ForceRasterWidgets"));
   end AA_ForceRasterWidgets;
   function AA_UseDesktopOpenGL return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_UseDesktopOpenGL"));
   end AA_UseDesktopOpenGL;
   function AA_UseOpenGLES return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_UseOpenGLES"));
   end AA_UseOpenGLES;
   function AA_UseSoftwareOpenGL return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_UseSoftwareOpenGL"));
   end AA_UseSoftwareOpenGL;
   function AA_ShareOpenGLContexts return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_ShareOpenGLContexts"));
   end AA_ShareOpenGLContexts;
   function AA_SetPalette return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_SetPalette"));
   end AA_SetPalette;
   function AA_EnableHighDpiScaling return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_EnableHighDpiScaling"));
   end AA_EnableHighDpiScaling;
   function AA_DisableHighDpiScaling return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DisableHighDpiScaling"));
   end AA_DisableHighDpiScaling;
   function AA_UseStyleSheetPropagationInWidgetStyles return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return
        new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_UseStyleSheetPropagationInWidgetStyles"));
   end AA_UseStyleSheetPropagationInWidgetStyles;
   function AA_DontUseNativeDialogs return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DontUseNativeDialogs"));
   end AA_DontUseNativeDialogs;
   function AA_SynthesizeMouseForUnhandledTabletEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return
        new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_SynthesizeMouseForUnhandledTabletEvents"));
   end AA_SynthesizeMouseForUnhandledTabletEvents;
   function AA_CompressHighFrequencyEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_CompressHighFrequencyEvents"));
   end AA_CompressHighFrequencyEvents;
   function AA_DontCheckOpenGLContextThreadAffinity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DontCheckOpenGLContextThreadAffinity"));
   end AA_DontCheckOpenGLContextThreadAffinity;
   function AA_DisableShaderDiskCache return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DisableShaderDiskCache"));
   end AA_DisableShaderDiskCache;
   function AA_DontShowShortcutsInContextMenus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DontShowShortcutsInContextMenus"));
   end AA_DontShowShortcutsInContextMenus;
   function AA_CompressTabletEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_CompressTabletEvents"));
   end AA_CompressTabletEvents;
   function AA_DisableSessionManager return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_DisableSessionManager"));
   end AA_DisableSessionManager;
   function AA_AttributeCount return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AA_AttributeCount"));
   end AA_AttributeCount;
end QtAda6.QtCore.Qt.ApplicationAttribute;
