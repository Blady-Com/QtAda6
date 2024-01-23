-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qstylehints.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.ColorScheme;
with QtAda6.QtCore.Qt.TabFocusBehavior;
package body QtAda6.QtGui.QStyleHints is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function colorSchemeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "colorSchemeChanged"));
   end colorSchemeChanged;
   function cursorFlashTimeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cursorFlashTimeChanged"));
   end cursorFlashTimeChanged;
   function keyboardInputIntervalChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "keyboardInputIntervalChanged"));
   end keyboardInputIntervalChanged;
   function mouseDoubleClickIntervalChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickIntervalChanged"));
   end mouseDoubleClickIntervalChanged;
   function mousePressAndHoldIntervalChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "mousePressAndHoldIntervalChanged"));
   end mousePressAndHoldIntervalChanged;
   function mouseQuickSelectionThresholdChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "mouseQuickSelectionThresholdChanged"));
   end mouseQuickSelectionThresholdChanged;
   function showShortcutsInContextMenusChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "showShortcutsInContextMenusChanged"));
   end showShortcutsInContextMenusChanged;
   function startDragDistanceChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "startDragDistanceChanged"));
   end startDragDistanceChanged;
   function startDragTimeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "startDragTimeChanged"));
   end startDragTimeChanged;
   function tabFocusBehaviorChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "tabFocusBehaviorChanged"));
   end tabFocusBehaviorChanged;
   function useHoverEffectsChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "useHoverEffectsChanged"));
   end useHoverEffectsChanged;
   function wheelScrollLinesChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "wheelScrollLinesChanged"));
   end wheelScrollLinesChanged;
   function colorScheme (self : access Inst) return access QtAda6.QtCore.Qt.ColorScheme.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.ColorScheme.Class := new QtAda6.QtCore.Qt.ColorScheme.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "colorScheme");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end colorScheme;
   function cursorFlashTime (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cursorFlashTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end cursorFlashTime;
   function fontSmoothingGamma (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontSmoothingGamma");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end fontSmoothingGamma;
   function keyboardAutoRepeatRate (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyboardAutoRepeatRate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end keyboardAutoRepeatRate;
   function keyboardAutoRepeatRateF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyboardAutoRepeatRateF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end keyboardAutoRepeatRateF;
   function keyboardInputInterval (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyboardInputInterval");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end keyboardInputInterval;
   function mouseDoubleClickDistance (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickDistance");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end mouseDoubleClickDistance;
   function mouseDoubleClickInterval (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickInterval");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end mouseDoubleClickInterval;
   function mousePressAndHoldInterval (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressAndHoldInterval");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end mousePressAndHoldInterval;
   function mouseQuickSelectionThreshold (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseQuickSelectionThreshold");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end mouseQuickSelectionThreshold;
   function passwordMaskCharacter (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "passwordMaskCharacter");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end passwordMaskCharacter;
   function passwordMaskDelay (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "passwordMaskDelay");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end passwordMaskDelay;
   procedure setCursorFlashTime (self : access Inst; cursorFlashTime_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCursorFlashTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (cursorFlashTime_P));
      Result := Object_CallObject (Method, Args, True);
   end setCursorFlashTime;
   function setFocusOnTouchRelease (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocusOnTouchRelease");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setFocusOnTouchRelease;
   procedure setKeyboardInputInterval (self : access Inst; keyboardInputInterval_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeyboardInputInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (keyboardInputInterval_P));
      Result := Object_CallObject (Method, Args, True);
   end setKeyboardInputInterval;
   procedure setMouseDoubleClickInterval (self : access Inst; mouseDoubleClickInterval_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMouseDoubleClickInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mouseDoubleClickInterval_P));
      Result := Object_CallObject (Method, Args, True);
   end setMouseDoubleClickInterval;
   procedure setMousePressAndHoldInterval (self : access Inst; mousePressAndHoldInterval_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMousePressAndHoldInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mousePressAndHoldInterval_P));
      Result := Object_CallObject (Method, Args, True);
   end setMousePressAndHoldInterval;
   procedure setMouseQuickSelectionThreshold (self : access Inst; threshold_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMouseQuickSelectionThreshold");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (threshold_P));
      Result := Object_CallObject (Method, Args, True);
   end setMouseQuickSelectionThreshold;
   procedure setShowShortcutsInContextMenus (self : access Inst; showShortcutsInContextMenus_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShowShortcutsInContextMenus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (showShortcutsInContextMenus_P));
      Result := Object_CallObject (Method, Args, True);
   end setShowShortcutsInContextMenus;
   procedure setStartDragDistance (self : access Inst; startDragDistance_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStartDragDistance");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (startDragDistance_P));
      Result := Object_CallObject (Method, Args, True);
   end setStartDragDistance;
   procedure setStartDragTime (self : access Inst; startDragTime_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStartDragTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (startDragTime_P));
      Result := Object_CallObject (Method, Args, True);
   end setStartDragTime;
   procedure setTabFocusBehavior
     (self : access Inst; tabFocusBehavior_P : access QtAda6.QtCore.Qt.TabFocusBehavior.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabFocusBehavior");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if tabFocusBehavior_P /= null then tabFocusBehavior_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTabFocusBehavior;
   procedure setUseHoverEffects (self : access Inst; useHoverEffects_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUseHoverEffects");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (useHoverEffects_P));
      Result := Object_CallObject (Method, Args, True);
   end setUseHoverEffects;
   procedure setWheelScrollLines (self : access Inst; scrollLines_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWheelScrollLines");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (scrollLines_P));
      Result := Object_CallObject (Method, Args, True);
   end setWheelScrollLines;
   function showIsFullScreen (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showIsFullScreen");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end showIsFullScreen;
   function showIsMaximized (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showIsMaximized");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end showIsMaximized;
   function showShortcutsInContextMenus (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showShortcutsInContextMenus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end showShortcutsInContextMenus;
   function singleClickActivation (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "singleClickActivation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end singleClickActivation;
   function startDragDistance (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startDragDistance");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end startDragDistance;
   function startDragTime (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startDragTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end startDragTime;
   function startDragVelocity (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startDragVelocity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end startDragVelocity;
   function tabFocusBehavior (self : access Inst) return access QtAda6.QtCore.Qt.TabFocusBehavior.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TabFocusBehavior.Class := new QtAda6.QtCore.Qt.TabFocusBehavior.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "tabFocusBehavior");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end tabFocusBehavior;
   function touchDoubleTapDistance (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "touchDoubleTapDistance");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end touchDoubleTapDistance;
   function useHoverEffects (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "useHoverEffects");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end useHoverEffects;
   function useRtlExtensions (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "useRtlExtensions");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end useRtlExtensions;
   function wheelScrollLines (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelScrollLines");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end wheelScrollLines;
end QtAda6.QtGui.QStyleHints;
