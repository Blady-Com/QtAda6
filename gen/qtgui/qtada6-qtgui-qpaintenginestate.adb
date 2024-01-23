-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpaintenginestate.adb
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
with QtAda6.QtGui.QBrush;
with QtAda6.QtCore.Qt.BGMode;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.Qt.ClipOperation;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QPainter.CompositionMode;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QPainter;
with QtAda6.QtGui.QPen;
with QtAda6.QtGui.QPainter.RenderHint;
with QtAda6.QtGui.QPaintEngine.DirtyFlag;
with QtAda6.QtGui.QTransform;
package body QtAda6.QtGui.QPaintEngineState is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngineState");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function backgroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundBrush");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundBrush;
   function backgroundMode (self : access Inst) return access QtAda6.QtCore.Qt.BGMode.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.BGMode.Class := new QtAda6.QtCore.Qt.BGMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundMode;
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "brush");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brush;
   function brushNeedsResolving (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "brushNeedsResolving");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end brushNeedsResolving;
   function brushOrigin (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "brushOrigin");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brushOrigin;
   function clipOperation (self : access Inst) return access QtAda6.QtCore.Qt.ClipOperation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ClipOperation.Class := new QtAda6.QtCore.Qt.ClipOperation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clipOperation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clipOperation;
   function clipPath (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clipPath");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clipPath;
   function clipRegion (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clipRegion");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clipRegion;
   function compositionMode (self : access Inst) return access QtAda6.QtGui.QPainter.CompositionMode.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainter.CompositionMode.Class := new QtAda6.QtGui.QPainter.CompositionMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "compositionMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end compositionMode;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "font");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function isClipEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isClipEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isClipEnabled;
   function opacity (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "opacity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end opacity;
   function painter (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPainter.Class := new QtAda6.QtGui.QPainter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "painter");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end painter;
   function pen (self : access Inst) return access QtAda6.QtGui.QPen.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPen.Class := new QtAda6.QtGui.QPen.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pen");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pen;
   function penNeedsResolving (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "penNeedsResolving");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end penNeedsResolving;
   function renderHints (self : access Inst) return access QtAda6.QtGui.QPainter.RenderHint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainter.RenderHint.Class := new QtAda6.QtGui.QPainter.RenderHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "renderHints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end renderHints;
   function state (self : access Inst) return access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintEngine.DirtyFlag.Class := new QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transform");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transform;
end QtAda6.QtGui.QPaintEngineState;
