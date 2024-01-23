-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qscreen.adb
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
with QtAda6.QtCore.Qt.ScreenOrientation;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtGui.QTransform;
with QtAda6.QtCore.QPoint;
package body QtAda6.QtGui.QScreen is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function availableGeometryChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "availableGeometryChanged"));
   end availableGeometryChanged;
   function geometryChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "geometryChanged"));
   end geometryChanged;
   function logicalDotsPerInchChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "logicalDotsPerInchChanged"));
   end logicalDotsPerInchChanged;
   function orientationChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "orientationChanged"));
   end orientationChanged;
   function physicalDotsPerInchChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "physicalDotsPerInchChanged"));
   end physicalDotsPerInchChanged;
   function physicalSizeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "physicalSizeChanged"));
   end physicalSizeChanged;
   function primaryOrientationChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "primaryOrientationChanged"));
   end primaryOrientationChanged;
   function refreshRateChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "refreshRateChanged"));
   end refreshRateChanged;
   function virtualGeometryChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "virtualGeometryChanged"));
   end virtualGeometryChanged;
   function angleBetween
     (self : access Inst; a_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
      b_P  : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "angleBetween");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if b_P /= null then b_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end angleBetween;
   function availableGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "availableGeometry");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end availableGeometry;
   function availableSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "availableSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end availableSize;
   function availableVirtualGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "availableVirtualGeometry");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end availableVirtualGeometry;
   function availableVirtualSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "availableVirtualSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end availableVirtualSize;
   function depth (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "depth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end depth;
   function devicePixelRatio (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devicePixelRatio");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end devicePixelRatio;
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
   function grabWindow
     (self : access Inst; window_P : int; x_P : int := 0; y_P : int := 0; w_P : int := 0; h_P : int := 0)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabWindow");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (window_P));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end grabWindow;
   function isLandscape
     (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLandscape");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLandscape;
   function isPortrait
     (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPortrait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isPortrait;
   function logicalDotsPerInch (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "logicalDotsPerInch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end logicalDotsPerInch;
   function logicalDotsPerInchX (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "logicalDotsPerInchX");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end logicalDotsPerInchX;
   function logicalDotsPerInchY (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "logicalDotsPerInchY");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end logicalDotsPerInchY;
   function manufacturer (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "manufacturer");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end manufacturer;
   function mapBetween
     (self : access Inst; a_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
      b_P  : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class; rect_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapBetween");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if b_P /= null then b_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapBetween;
   function model (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "model");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end model;
   function name (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function nativeOrientation (self : access Inst) return access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ScreenOrientation.Class := new QtAda6.QtCore.Qt.ScreenOrientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "nativeOrientation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end nativeOrientation;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ScreenOrientation.Class := new QtAda6.QtCore.Qt.ScreenOrientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation;
   function physicalDotsPerInch (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "physicalDotsPerInch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end physicalDotsPerInch;
   function physicalDotsPerInchX (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "physicalDotsPerInchX");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end physicalDotsPerInchX;
   function physicalDotsPerInchY (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "physicalDotsPerInchY");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end physicalDotsPerInchY;
   function physicalSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "physicalSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end physicalSize;
   function primaryOrientation (self : access Inst) return access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ScreenOrientation.Class := new QtAda6.QtCore.Qt.ScreenOrientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "primaryOrientation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end primaryOrientation;
   function refreshRate (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "refreshRate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end refreshRate;
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
   function serialNumber (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "serialNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end serialNumber;
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
   function transformBetween
     (self : access Inst; a_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
      b_P  : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class; target_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformBetween");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if b_P /= null then b_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformBetween;
   function virtualGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "virtualGeometry");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end virtualGeometry;
   function virtualSiblingAt
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QScreen.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QScreen.Class := new QtAda6.QtGui.QScreen.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "virtualSiblingAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end virtualSiblingAt;
   function virtualSiblings (self : access Inst) return LIST_QtAda6_QtGui_QScreen is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "virtualSiblings");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end virtualSiblings;
   function virtualSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "virtualSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end virtualSize;
end QtAda6.QtGui.QScreen;
