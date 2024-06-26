-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qlineargradient.adb
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
package body QtAda6.QtGui.QLinearGradient is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QLinearGradient_P : access QtAda6.QtGui.QLinearGradient.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QLinearGradient_P /= null then QLinearGradient_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P : access QtAda6.QtCore.QPointF.Inst'Class; finalStop_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P : access QtAda6.QtCore.QPointF.Inst'Class; finalStop_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P     : access QtAda6.QtCore.QPointF.Inst'Class;
      finalStop_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P : access QtAda6.QtCore.QPoint.Inst'Class; finalStop_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P : access QtAda6.QtCore.QPoint.Inst'Class; finalStop_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P     : access QtAda6.QtCore.QPoint.Inst'Class;
      finalStop_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      finalStop_P : access QtAda6.QtCore.QPointF.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      finalStop_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (start_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      finalStop_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if finalStop_P /= null then finalStop_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (xStart_P : float; yStart_P : float; xFinalStop_P : float; yFinalStop_P : float) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (xStart_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (yStart_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (xFinalStop_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (yFinalStop_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QLinearGradient");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function finalStop (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "finalStop");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end finalStop;
   procedure setFinalStop (self : access Inst; stop_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFinalStop");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stop_P /= null then stop_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFinalStop;
   procedure setFinalStop (self : access Inst; stop_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFinalStop");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stop_P /= null then stop_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFinalStop;
   procedure setFinalStop (self : access Inst; stop_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFinalStop");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stop_P /= null then stop_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFinalStop;
   procedure setFinalStop (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFinalStop");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFinalStop;
   procedure setStart (self : access Inst; start_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStart");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStart;
   procedure setStart (self : access Inst; start_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStart");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStart;
   procedure setStart (self : access Inst; start_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStart");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStart;
   procedure setStart (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStart");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStart;
   function start (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "start");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end start;
end QtAda6.QtGui.QLinearGradient;
