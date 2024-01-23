-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintenginestate.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.Qt.BGMode;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.Qt.ClipOperation;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QPainter.CompositionMode;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QPen;
limited with QtAda6.QtGui.QPainter.RenderHint;
limited with QtAda6.QtGui.QPaintEngine.DirtyFlag;
limited with QtAda6.QtGui.QTransform;
package QtAda6.QtGui.QPaintEngineState is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function backgroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function backgroundMode (self : access Inst) return access QtAda6.QtCore.Qt.BGMode.Inst'Class;
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function brushNeedsResolving (self : access Inst) return bool;
   function brushOrigin (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function clipOperation (self : access Inst) return access QtAda6.QtCore.Qt.ClipOperation.Inst'Class;
   function clipPath (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function clipRegion (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function compositionMode (self : access Inst) return access QtAda6.QtGui.QPainter.CompositionMode.Inst'Class;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function isClipEnabled (self : access Inst) return bool;
   function opacity (self : access Inst) return float;
   function painter (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class;
   function pen (self : access Inst) return access QtAda6.QtGui.QPen.Inst'Class;
   function penNeedsResolving (self : access Inst) return bool;
   function renderHints (self : access Inst) return access QtAda6.QtGui.QPainter.RenderHint.Inst'Class;
   function state (self : access Inst) return access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
end QtAda6.QtGui.QPaintEngineState;
