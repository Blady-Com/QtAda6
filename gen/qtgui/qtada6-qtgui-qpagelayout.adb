-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpagelayout.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QPageSize;
with QtAda6.QtGui.QPageSize.PageSizeId;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QPageLayout.Orientation;
with QtAda6.QtCore.QMarginsF;
with QtAda6.QtCore.QMargins;
with QtAda6.QtGui.QPageLayout.Unit;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QPageLayout.Mode;
package body QtAda6.QtGui.QPageLayout is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageLayout");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageLayout");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (pageSize_P    : Union_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize;
      orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class;
      margins_P     : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins;
      units_P       : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class;
      minMargins_P  : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageLayout");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, orientation_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, units_P.Python_Proxy);
      Tuple_SetItem (Args, 4, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageLayout");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function fullRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fullRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fullRect;
   function fullRect
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fullRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, units_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fullRect;
   function fullRectPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fullRectPixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fullRectPixels;
   function fullRectPoints (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fullRectPoints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fullRectPoints;
   function isEquivalentTo (self : access Inst; other_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEquivalentTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEquivalentTo;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function margins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "margins");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end margins;
   function margins
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QMarginsF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "margins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, units_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end margins;
   function marginsPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "marginsPixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end marginsPixels;
   function marginsPoints (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "marginsPoints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end marginsPoints;
   function maximumMargins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumMargins");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumMargins;
   function minimumMargins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumMargins");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumMargins;
   function mode_F (self : access Inst) return access QtAda6.QtGui.QPageLayout.Mode.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPageLayout.Mode.Class := new QtAda6.QtGui.QPageLayout.Mode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mode_F;
   function orientation_F (self : access Inst) return access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageLayout.Orientation.Class := new QtAda6.QtGui.QPageLayout.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation_F;
   function pageSize (self : access Inst) return access QtAda6.QtGui.QPageSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPageSize.Class := new QtAda6.QtGui.QPageSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageSize;
   function paintRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintRect;
   function paintRect
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, units_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintRect;
   function paintRectPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintRectPixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintRectPixels;
   function paintRectPoints (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintRectPoints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintRectPoints;
   function setBottomMargin (self : access Inst; bottomMargin_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (bottomMargin_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setBottomMargin;
   function setLeftMargin (self : access Inst; leftMargin_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (leftMargin_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setLeftMargin;
   function setMargins
     (self : access Inst; margins_P : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMargins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setMargins;
   procedure setMinimumMargins (self : access Inst; minMargins_P : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumMargins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setMinimumMargins;
   procedure setMode (self : access Inst; mode_P : access QtAda6.QtGui.QPageLayout.Mode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setMode;
   procedure setOrientation (self : access Inst; orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, orientation_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setOrientation;
   procedure setPageSize
     (self         : access Inst;
      pageSize_P   : Union_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize;
      minMargins_P : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageSize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPageSize;
   function setRightMargin (self : access Inst; rightMargin_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (rightMargin_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setRightMargin;
   function setTopMargin (self : access Inst; topMargin_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (topMargin_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setTopMargin;
   procedure setUnits (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUnits");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, units_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setUnits;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPageLayout.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function units (self : access Inst) return access QtAda6.QtGui.QPageLayout.Unit.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPageLayout.Unit.Class := new QtAda6.QtGui.QPageLayout.Unit.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "units");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end units;
end QtAda6.QtGui.QPageLayout;
