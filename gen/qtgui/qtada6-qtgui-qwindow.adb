-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qwindow.adb
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
with QtAda6.QtGui.QSurface;
with QtAda6.QtGui.QScreen;
with QtAda6.QtGui.QAccessibleInterface;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QCloseEvent;
with QtAda6.QtCore.Qt.ScreenOrientation;
with QtAda6.QtGui.QCursor;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QExposeEvent;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtGui.QSurfaceFormat;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QMargins;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QHideEvent;
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QWindow.AncestorMode;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QRegion;
with QtAda6.QtCore.Qt.WindowModality;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QMoveEvent;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtCore.Qt.CursorShape;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QSurfaceFormat.FormatOption;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtGui.QSurface.SurfaceType;
with QtAda6.QtGui.QWindow.Visibility;
with QtAda6.QtCore.Qt.WindowState;
with QtAda6.QtGui.QShowEvent;
with QtAda6.QtCore.Qt.Edge;
with QtAda6.QtGui.QTabletEvent;
with QtAda6.QtGui.QTouchEvent;
with QtAda6.QtGui.QWheelEvent;
package body QtAda6.QtGui.QWindow is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function activeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "activeChanged"));
   end activeChanged;
   function contentOrientationChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "contentOrientationChanged"));
   end contentOrientationChanged;
   function focusObjectChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "focusObjectChanged"));
   end focusObjectChanged;
   function heightChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "heightChanged"));
   end heightChanged;
   function maximumHeightChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "maximumHeightChanged"));
   end maximumHeightChanged;
   function maximumWidthChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "maximumWidthChanged"));
   end maximumWidthChanged;
   function minimumHeightChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "minimumHeightChanged"));
   end minimumHeightChanged;
   function minimumWidthChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "minimumWidthChanged"));
   end minimumWidthChanged;
   function modalityChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "modalityChanged"));
   end modalityChanged;
   function opacityChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "opacityChanged"));
   end opacityChanged;
   function screenChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "screenChanged"));
   end screenChanged;
   function transientParentChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "transientParentChanged"));
   end transientParentChanged;
   function visibilityChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "visibilityChanged"));
   end visibilityChanged;
   function visibleChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "visibleChanged"));
   end visibleChanged;
   function widthChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "widthChanged"));
   end widthChanged;
   function windowStateChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "windowStateChanged"));
   end windowStateChanged;
   function windowTitleChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "windowTitleChanged"));
   end windowTitleChanged;
   function xChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "xChanged"));
   end xChanged;
   function yChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "yChanged"));
   end yChanged;
   function Create (parent_P : access QtAda6.QtGui.QWindow.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWindow");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (screen_P : access QtAda6.QtGui.QScreen.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWindow");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function accessibleRoot (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "accessibleRoot");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end accessibleRoot;
   procedure alert (self : access Inst; msec_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alert");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Result := Object_CallObject (Method, Args, True);
   end alert;
   function baseSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "baseSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end baseSize;
   function close (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "close");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end close;
   procedure closeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QCloseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end closeEvent;
   function contentOrientation (self : access Inst) return access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ScreenOrientation.Class := new QtAda6.QtCore.Qt.ScreenOrientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "contentOrientation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end contentOrientation;
   procedure create (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "create");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end create;
   function cursor (self : access Inst) return access QtAda6.QtGui.QCursor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QCursor.Class := new QtAda6.QtGui.QCursor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cursor");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cursor;
   procedure destroy (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destroy");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end destroy;
   function devicePixelRatio (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devicePixelRatio");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end devicePixelRatio;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   procedure exposeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QExposeEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exposeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end exposeEvent;
   function filePath (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filePath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end filePath;
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.WindowType.Class := new QtAda6.QtCore.Qt.WindowType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   procedure focusInEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusInEvent;
   function focusObject (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusObject");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusObject;
   procedure focusOutEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusOutEvent;
   function format (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QSurfaceFormat.Class := new QtAda6.QtGui.QSurfaceFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "format");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format;
   function frameGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "frameGeometry");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end frameGeometry;
   function frameMargins (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "frameMargins");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end frameMargins;
   function framePosition (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "framePosition");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end framePosition;
   function fromWinId (id_P : int) return access QtAda6.QtGui.QWindow.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWindow");
      Method := Object_GetAttrString (Class, "fromWinId");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromWinId;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "geometry");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end geometry;
   function height (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end height;
   procedure hide (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hide");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end hide;
   procedure hideEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QHideEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end hideEvent;
   function icon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "icon");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end icon;
   function isActive (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActive");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isActive;
   function isAncestorOf
     (self   : access Inst; child_P : access QtAda6.QtGui.QWindow.Inst'Class;
      mode_P : access QtAda6.QtGui.QWindow.AncestorMode.Inst'Class := null) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAncestorOf");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAncestorOf;
   function isExposed (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isExposed");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isExposed;
   function isModal (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isModal");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isModal;
   function isTopLevel (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTopLevel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isTopLevel;
   function isVisible (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isVisible;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end keyPressEvent;
   procedure keyReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end keyReleaseEvent;
   procedure lower (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lower");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end lower;
   function mapFromGlobal
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromGlobal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromGlobal;
   function mapFromGlobal
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromGlobal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromGlobal;
   function mapToGlobal
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToGlobal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToGlobal;
   function mapToGlobal
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToGlobal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToGlobal;
   function mask (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mask");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mask;
   function maximumHeight (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumHeight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end maximumHeight;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumSize;
   function maximumWidth (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end maximumWidth;
   function minimumHeight (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumHeight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end minimumHeight;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSize;
   function minimumWidth (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end minimumWidth;
   function modality (self : access Inst) return access QtAda6.QtCore.Qt.WindowModality.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.WindowModality.Class := new QtAda6.QtCore.Qt.WindowModality.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "modality");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end modality;
   procedure mouseDoubleClickEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseDoubleClickEvent;
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseReleaseEvent;
   procedure moveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMoveEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end moveEvent;
   function nativeEvent
     (self : access Inst; eventType_P : UNION_QtAda6_QtCore_QByteArraybytes; message_P : int) return access Object'Class
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeEvent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if eventType_P /= null then eventType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (message_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end nativeEvent;
   function opacity (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "opacity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end opacity;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end paintEvent;
   function parent
     (self : access Inst; mode_P : access QtAda6.QtGui.QWindow.AncestorMode.Inst'Class := null)
      return access QtAda6.QtGui.QWindow.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function position (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "position");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end position;
   procedure raise_U (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "raise_");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end raise_U;
   procedure reportContentOrientationChange
     (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reportContentOrientationChange");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end reportContentOrientationChange;
   procedure requestActivate (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "requestActivate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end requestActivate;
   procedure requestUpdate (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "requestUpdate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end requestUpdate;
   function requestedFormat (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QSurfaceFormat.Class := new QtAda6.QtGui.QSurfaceFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "requestedFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end requestedFormat;
   procedure resize (self : access Inst; newSize_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if newSize_P /= null then newSize_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   procedure resize (self : access Inst; w_P : int; h_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resizeEvent;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolveInterface");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (name_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (revision_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resolveInterface;
   function screen (self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QScreen.Class := new QtAda6.QtGui.QScreen.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screen");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screen;
   procedure setBaseSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBaseSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setBaseSize;
   procedure setCursor
     (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QCursorQtAda6_QtCore_Qt_CursorShapeQtAda6_QtGui_QPixmap)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCursor;
   procedure setFilePath (self : access Inst; filePath_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filePath_P));
      Result := Object_CallObject (Method, Args, True);
   end setFilePath;
   procedure setFlag (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class; on_P : bool := False)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlag");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setFlag;
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFlags;
   procedure setFormat
     (self : access Inst; format_P : UNION_QtAda6_QtGui_QSurfaceFormatQtAda6_QtGui_QSurfaceFormat_FormatOption)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFormat;
   procedure setFramePosition (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFramePosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFramePosition;
   procedure setGeometry (self : access Inst; posx_P : int; posy_P : int; w_P : int; h_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (posx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (posy_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Result := Object_CallObject (Method, Args, True);
   end setGeometry;
   procedure setGeometry (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setGeometry;
   procedure setHeight (self : access Inst; arg_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_P));
      Result := Object_CallObject (Method, Args, True);
   end setHeight;
   procedure setIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIconQtAda6_QtGui_QPixmap) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setIcon;
   function setKeyboardGrabEnabled (self : access Inst; grab_P : bool) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeyboardGrabEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (grab_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setKeyboardGrabEnabled;
   procedure setMask
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMask;
   procedure setMaximumHeight (self : access Inst; h_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Result := Object_CallObject (Method, Args, True);
   end setMaximumHeight;
   procedure setMaximumSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMaximumSize;
   procedure setMaximumWidth (self : access Inst; w_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Result := Object_CallObject (Method, Args, True);
   end setMaximumWidth;
   procedure setMinimumHeight (self : access Inst; h_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Result := Object_CallObject (Method, Args, True);
   end setMinimumHeight;
   procedure setMinimumSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMinimumSize;
   procedure setMinimumWidth (self : access Inst; w_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Result := Object_CallObject (Method, Args, True);
   end setMinimumWidth;
   procedure setModality (self : access Inst; modality_P : access QtAda6.QtCore.Qt.WindowModality.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModality");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if modality_P /= null then modality_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setModality;
   function setMouseGrabEnabled (self : access Inst; grab_P : bool) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMouseGrabEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (grab_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setMouseGrabEnabled;
   procedure setOpacity (self : access Inst; level_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOpacity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (level_P));
      Result := Object_CallObject (Method, Args, True);
   end setOpacity;
   procedure setParent (self : access Inst; parent_P : access QtAda6.QtGui.QWindow.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setParent;
   procedure setPosition (self : access Inst; posx_P : int; posy_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (posx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (posy_P));
      Result := Object_CallObject (Method, Args, True);
   end setPosition;
   procedure setPosition (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pt_P /= null then pt_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPosition;
   procedure setScreen (self : access Inst; screen_P : access QtAda6.QtGui.QScreen.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScreen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setScreen;
   procedure setSizeIncrement (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSizeIncrement");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSizeIncrement;
   procedure setSurfaceType (self : access Inst; surfaceType_P : access QtAda6.QtGui.QSurface.SurfaceType.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSurfaceType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if surfaceType_P /= null then surfaceType_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSurfaceType;
   procedure setTitle (self : access Inst; arg_1_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTitle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setTitle;
   procedure setTransientParent (self : access Inst; parent_P : access QtAda6.QtGui.QWindow.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransientParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTransientParent;
   procedure setVisibility (self : access Inst; v_P : access QtAda6.QtGui.QWindow.Visibility.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisibility");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v_P /= null then v_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setVisibility;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Result := Object_CallObject (Method, Args, True);
   end setVisible;
   procedure setWidth (self : access Inst; arg_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_P));
      Result := Object_CallObject (Method, Args, True);
   end setWidth;
   procedure setWindowState (self : access Inst; state_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setWindowState;
   procedure setWindowStates (self : access Inst; states_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowStates");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if states_P /= null then states_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setWindowStates;
   procedure setX (self : access Inst; arg_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_P));
      Result := Object_CallObject (Method, Args, True);
   end setX;
   procedure setY (self : access Inst; arg_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setY");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_P));
      Result := Object_CallObject (Method, Args, True);
   end setY;
   procedure show (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "show");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end show;
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end showEvent;
   procedure showFullScreen (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showFullScreen");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showFullScreen;
   procedure showMaximized (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMaximized");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showMaximized;
   procedure showMinimized (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMinimized");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showMinimized;
   procedure showNormal (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showNormal");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showNormal;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   function sizeIncrement (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeIncrement");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeIncrement;
   function startSystemMove (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startSystemMove");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end startSystemMove;
   function startSystemResize (self : access Inst; edges_P : access QtAda6.QtCore.Qt.Edge.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startSystemResize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if edges_P /= null then edges_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end startSystemResize;
   function surfaceHandle (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "surfaceHandle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end surfaceHandle;
   function surfaceType (self : access Inst) return access QtAda6.QtGui.QSurface.SurfaceType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QSurface.SurfaceType.Class := new QtAda6.QtGui.QSurface.SurfaceType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "surfaceType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end surfaceType;
   procedure tabletEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QTabletEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabletEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end tabletEvent;
   function title (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "title");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end title;
   procedure touchEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QTouchEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "touchEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end touchEvent;
   function transientParent (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transientParent");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transientParent;
   function type_K (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.WindowType.Class := new QtAda6.QtCore.Qt.WindowType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K;
   procedure unsetCursor (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unsetCursor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end unsetCursor;
   function visibility_F (self : access Inst) return access QtAda6.QtGui.QWindow.Visibility.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QWindow.Visibility.Class := new QtAda6.QtGui.QWindow.Visibility.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "visibility");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visibility_F;
   procedure wheelEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end wheelEvent;
   function width (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end width;
   function winId (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "winId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end winId;
   function windowState (self : access Inst) return access QtAda6.QtCore.Qt.WindowState.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.WindowState.Class := new QtAda6.QtCore.Qt.WindowState.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowState");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowState;
   function windowStates (self : access Inst) return access QtAda6.QtCore.Qt.WindowState.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.WindowState.Class := new QtAda6.QtCore.Qt.WindowState.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowStates");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowStates;
   function x (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end x;
   function y_F (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end y_F;
end QtAda6.QtGui.QWindow;
