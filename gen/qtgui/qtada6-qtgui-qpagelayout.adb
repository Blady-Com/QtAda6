-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpagelayout.adb
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
with QtAda6.QtGui.QPageLayout;
with QtAda6.QtGui.QPageLayout.Orientation;
with QtAda6.QtGui.QPageLayout.Unit;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QMarginsF;
with QtAda6.QtCore.QMargins;
with QtAda6.QtGui.QPageLayout.Mode;
with QtAda6.QtGui.QPageSize;
package body QtAda6.QtGui.QPageLayout is
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
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageLayout");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageLayout");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pageSize_P    : UNION_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize;
      orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class;
      margins_P     : UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins;
      units_P       : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class      := null;
      minMargins_P  : UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageLayout");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pageSize_P /= null then pageSize_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if margins_P /= null then margins_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if units_P /= null then
         Dict_SetItemString (Dict, "units", units_P.Python_Proxy);
      end if;
      if minMargins_P /= null then
         Dict_SetItemString (Dict, "minMargins", minMargins_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageLayout");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function fullRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fullRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fullRect;
   function fullRect
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fullRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fullRect;
   function fullRectPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fullRectPixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fullRectPixels;
   function fullRectPoints (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fullRectPoints");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fullRectPoints;
   function isEquivalentTo (self : access Inst; other_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEquivalentTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEquivalentTo;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function margins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "margins");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end margins;
   function margins
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QMarginsF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "margins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end margins;
   function marginsPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "marginsPixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end marginsPixels;
   function marginsPoints (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "marginsPoints");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end marginsPoints;
   function maximumMargins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumMargins");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumMargins;
   function minimumMargins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMarginsF.Class := new QtAda6.QtCore.QMarginsF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumMargins");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumMargins;
   function mode_F (self : access Inst) return access QtAda6.QtGui.QPageLayout.Mode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageLayout.Mode.Class := new QtAda6.QtGui.QPageLayout.Mode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mode_F;
   function orientation_F (self : access Inst) return access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageLayout.Orientation.Class := new QtAda6.QtGui.QPageLayout.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation_F;
   function pageSize (self : access Inst) return access QtAda6.QtGui.QPageSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageSize.Class := new QtAda6.QtGui.QPageSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageSize;
   function paintRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintRect;
   function paintRect
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintRect;
   function paintRectPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintRectPixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintRectPixels;
   function paintRectPoints (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintRectPoints");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintRectPoints;
   function setBottomMargin (self : access Inst; bottomMargin_P : float) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (bottomMargin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setBottomMargin;
   function setLeftMargin (self : access Inst; leftMargin_P : float) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (leftMargin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setLeftMargin;
   function setMargins
     (self : access Inst; margins_P : UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMargins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if margins_P /= null then margins_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setMargins;
   procedure setMinimumMargins (self : access Inst; minMargins_P : UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumMargins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if minMargins_P /= null then minMargins_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMinimumMargins;
   procedure setMode (self : access Inst; mode_P : access QtAda6.QtGui.QPageLayout.Mode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMode;
   procedure setOrientation (self : access Inst; orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOrientation;
   procedure setPageSize
     (self         : access Inst;
      pageSize_P   : UNION_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize;
      minMargins_P : UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSize_P /= null then pageSize_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if minMargins_P /= null then
         Dict_SetItemString (Dict, "minMargins", minMargins_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setPageSize;
   function setRightMargin (self : access Inst; rightMargin_P : float) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (rightMargin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setRightMargin;
   function setTopMargin (self : access Inst; topMargin_P : float) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (topMargin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setTopMargin;
   procedure setUnits (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUnits");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setUnits;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPageLayout.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function units (self : access Inst) return access QtAda6.QtGui.QPageLayout.Unit.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageLayout.Unit.Class := new QtAda6.QtGui.QPageLayout.Unit.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "units");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end units;
end QtAda6.QtGui.QPageLayout;
