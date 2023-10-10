-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qstylehints.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.ColorScheme;
limited with QtAda6.QtCore.Qt.TabFocusBehavior;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QStyleHints is
   type ClassVar_Signal is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   colorSchemeChanged                  : ClassVar_Signal;-- colorSchemeChanged(Qt::ColorScheme)
   cursorFlashTimeChanged              : ClassVar_Signal;-- cursorFlashTimeChanged(int)
   keyboardInputIntervalChanged        : ClassVar_Signal;-- keyboardInputIntervalChanged(int)
   mouseDoubleClickIntervalChanged     : ClassVar_Signal;-- mouseDoubleClickIntervalChanged(int)
   mousePressAndHoldIntervalChanged    : ClassVar_Signal;-- mousePressAndHoldIntervalChanged(int)
   mouseQuickSelectionThresholdChanged : ClassVar_Signal;-- mouseQuickSelectionThresholdChanged(int)
   showShortcutsInContextMenusChanged  : ClassVar_Signal;-- showShortcutsInContextMenusChanged(bool)
   startDragDistanceChanged            : ClassVar_Signal;-- startDragDistanceChanged(int)
   startDragTimeChanged                : ClassVar_Signal;-- startDragTimeChanged(int)
   tabFocusBehaviorChanged             : ClassVar_Signal;-- tabFocusBehaviorChanged(Qt::TabFocusBehavior)
   useHoverEffectsChanged              : ClassVar_Signal;-- useHoverEffectsChanged(bool)
   wheelScrollLinesChanged             : ClassVar_Signal;-- wheelScrollLinesChanged(int)
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
