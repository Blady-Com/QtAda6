-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsitemanimation.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QGraphicsItem;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtCore.QTimeLine;
with QtAda6.QtGui.QTransform;
package body QtAda6.QtWidgets.QGraphicsItemAnimation is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItemAnimation");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure afterAnimationStep (self : access Inst; step_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "afterAnimationStep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
   end afterAnimationStep;
   procedure beforeAnimationStep (self : access Inst; step_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beforeAnimationStep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
   end beforeAnimationStep;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function horizontalScaleAt (self : access Inst; step_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalScaleAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end horizontalScaleAt;
   function horizontalShearAt (self : access Inst; step_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalShearAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end horizontalShearAt;
   function item (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "item");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end item;
   function posAt (self : access Inst; step_P : float) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "posAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end posAt;
   function posList (self : access Inst) return List_Tuple_float_QtAda6_QtCore_QPointF is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "posList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end posList;
   function rotationAt (self : access Inst; step_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotationAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rotationAt;
   function rotationList (self : access Inst) return List_Tuple_float_float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotationList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end rotationList;
   function scaleList (self : access Inst) return List_Tuple_float_QtAda6_QtCore_QPointF is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaleList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end scaleList;
   procedure setItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setItem;
   procedure setPosAt
     (self  : access Inst; step_P : float;
      pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPosAt;
   procedure setRotationAt (self : access Inst; step_P : float; angle_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRotationAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (angle_P));
      Result := Object_CallObject (Method, Args, True);
   end setRotationAt;
   procedure setScaleAt (self : access Inst; step_P : float; sx_P : float; sy_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScaleAt");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (sx_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (sy_P));
      Result := Object_CallObject (Method, Args, True);
   end setScaleAt;
   procedure setShearAt (self : access Inst; step_P : float; sh_P : float; sv_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShearAt");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (sh_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (sv_P));
      Result := Object_CallObject (Method, Args, True);
   end setShearAt;
   procedure setStep (self : access Inst; x_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Result := Object_CallObject (Method, Args, True);
   end setStep;
   procedure setTimeLine (self : access Inst; timeLine_P : access QtAda6.QtCore.QTimeLine.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimeLine");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, timeLine_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setTimeLine;
   procedure setTranslationAt (self : access Inst; step_P : float; dx_P : float; dy_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTranslationAt");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (dy_P));
      Result := Object_CallObject (Method, Args, True);
   end setTranslationAt;
   function shearList (self : access Inst) return List_Tuple_float_QtAda6_QtCore_QPointF is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shearList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end shearList;
   function timeLine (self : access Inst) return access QtAda6.QtCore.QTimeLine.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QTimeLine.Class := new QtAda6.QtCore.QTimeLine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "timeLine");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end timeLine;
   function transformAt (self : access Inst; step_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformAt;
   function translationList (self : access Inst) return List_Tuple_float_QtAda6_QtCore_QPointF is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translationList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end translationList;
   function verticalScaleAt (self : access Inst; step_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalScaleAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end verticalScaleAt;
   function verticalShearAt (self : access Inst; step_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalShearAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end verticalShearAt;
   function xTranslationAt (self : access Inst; step_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "xTranslationAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end xTranslationAt;
   function yTranslationAt (self : access Inst; step_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "yTranslationAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end yTranslationAt;
end QtAda6.QtWidgets.QGraphicsItemAnimation;
