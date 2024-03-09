-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qstylehints.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.Qt.ColorScheme;
limited with QtAda6.QtCore.Qt.TabFocusBehavior;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QStyleHints is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function colorSchemeChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- colorSchemeChanged(Qt::ColorScheme)
   function cursorFlashTimeChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cursorFlashTimeChanged(int)
   function keyboardInputIntervalChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- keyboardInputIntervalChanged(int)
   function mouseDoubleClickIntervalChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- mouseDoubleClickIntervalChanged(int)
   function mousePressAndHoldIntervalChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- mousePressAndHoldIntervalChanged(int)
   function mouseQuickSelectionThresholdChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- mouseQuickSelectionThresholdChanged(int)
   function showShortcutsInContextMenusChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- showShortcutsInContextMenusChanged(bool)
   function startDragDistanceChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- startDragDistanceChanged(int)
   function startDragTimeChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- startDragTimeChanged(int)
   function tabFocusBehaviorChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- tabFocusBehaviorChanged(Qt::TabFocusBehavior)
   function useHoverEffectsChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- useHoverEffectsChanged(bool)
   function wheelScrollLinesChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- wheelScrollLinesChanged(int)
   function colorScheme (self : access Inst) return access QtAda6.QtCore.Qt.ColorScheme.Inst'Class;
   function cursorFlashTime (self : access Inst) return int;
   function fontSmoothingGamma (self : access Inst) return float;
   function keyboardAutoRepeatRate (self : access Inst) return int;
   function keyboardAutoRepeatRateF (self : access Inst) return float;
   function keyboardInputInterval (self : access Inst) return int;
   function mouseDoubleClickDistance (self : access Inst) return int;
   function mouseDoubleClickInterval (self : access Inst) return int;
   function mousePressAndHoldInterval (self : access Inst) return int;
   function mouseQuickSelectionThreshold (self : access Inst) return int;
   function passwordMaskCharacter (self : access Inst) return str;
   function passwordMaskDelay (self : access Inst) return int;
   procedure setCursorFlashTime (self : access Inst; cursorFlashTime_P : int);
   function setFocusOnTouchRelease (self : access Inst) return bool;
   procedure setKeyboardInputInterval (self : access Inst; keyboardInputInterval_P : int);
   procedure setMouseDoubleClickInterval (self : access Inst; mouseDoubleClickInterval_P : int);
   procedure setMousePressAndHoldInterval (self : access Inst; mousePressAndHoldInterval_P : int);
   procedure setMouseQuickSelectionThreshold (self : access Inst; threshold_P : int);
   procedure setShowShortcutsInContextMenus (self : access Inst; showShortcutsInContextMenus_P : bool);
   procedure setStartDragDistance (self : access Inst; startDragDistance_P : int);
   procedure setStartDragTime (self : access Inst; startDragTime_P : int);
   procedure setTabFocusBehavior
     (self : access Inst; tabFocusBehavior_P : access QtAda6.QtCore.Qt.TabFocusBehavior.Inst'Class);
   procedure setUseHoverEffects (self : access Inst; useHoverEffects_P : bool);
   procedure setWheelScrollLines (self : access Inst; scrollLines_P : int);
   function showIsFullScreen (self : access Inst) return bool;
   function showIsMaximized (self : access Inst) return bool;
   function showShortcutsInContextMenus (self : access Inst) return bool;
   function singleClickActivation (self : access Inst) return bool;
   function startDragDistance (self : access Inst) return int;
   function startDragTime (self : access Inst) return int;
   function startDragVelocity (self : access Inst) return int;
   function tabFocusBehavior (self : access Inst) return access QtAda6.QtCore.Qt.TabFocusBehavior.Inst'Class;
   function touchDoubleTapDistance (self : access Inst) return int;
   function useHoverEffects (self : access Inst) return bool;
   function useRtlExtensions (self : access Inst) return bool;
   function wheelScrollLines (self : access Inst) return int;
end QtAda6.QtGui.QStyleHints;
