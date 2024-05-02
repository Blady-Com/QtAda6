-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qradialgradient.adb
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
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtGui.QRadialGradient is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QRadialGradient_P : access QtAda6.QtGui.QRadialGradient.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QRadialGradient_P /= null then QRadialGradient_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPointF.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPointF.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPointF.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPoint.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPoint.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPoint.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; centerRadius_P : float;
      focalPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; focalRadius_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (center_P : access QtAda6.QtCore.QPointF.Inst'Class; radius_P : float) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (center_P : access QtAda6.QtCore.QPoint.Inst'Class; radius_P : float) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (center_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; radius_P : float) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPointF.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPointF.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPointF.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPointF.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPoint.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPointF.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPoint.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtCore.QPoint.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPointF.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (center_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; radius_P : float;
      focalPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 2, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (cx_P : float; cy_P : float; centerRadius_P : float; fx_P : float; fy_P : float; focalRadius_P : float)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (cx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (cy_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (centerRadius_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (fx_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (fy_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (focalRadius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (cx_P : float; cy_P : float; radius_P : float) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (cx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (cy_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (radius_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (cx_P : float; cy_P : float; radius_P : float; fx_P : float; fy_P : float) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, Float_FromDouble (cx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (cy_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (radius_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (fx_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (fy_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function center (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "center");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end center;
   function centerRadius (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "centerRadius");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end centerRadius;
   function focalPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focalPoint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focalPoint;
   function focalRadius (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focalRadius");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end focalRadius;
   function radius (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "radius");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end radius;
   procedure setCenter (self : access Inst; center_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenter;
   procedure setCenter (self : access Inst; center_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenter;
   procedure setCenter (self : access Inst; center_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenter;
   procedure setCenter (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenter;
   procedure setCenterRadius (self : access Inst; radius_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenterRadius");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (radius_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenterRadius;
   procedure setFocalPoint (self : access Inst; focalPoint_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocalPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocalPoint;
   procedure setFocalPoint (self : access Inst; focalPoint_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocalPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocalPoint;
   procedure setFocalPoint (self : access Inst; focalPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocalPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if focalPoint_P /= null then focalPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocalPoint;
   procedure setFocalPoint (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocalPoint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocalPoint;
   procedure setFocalRadius (self : access Inst; radius_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocalRadius");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (radius_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocalRadius;
   procedure setRadius (self : access Inst; radius_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRadius");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (radius_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRadius;
end QtAda6.QtGui.QRadialGradient;
