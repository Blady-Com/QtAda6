-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpagedpaintdevice.adb
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
with QtAda6.QtGui.QPageRanges;
with QtAda6.QtGui.QPageLayout.Unit;
with QtAda6.QtGui.QPageLayout.Orientation;
package body QtAda6.QtGui.QPagedPaintDevice is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function newPage (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "newPage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end newPage;
   function pageLayout (self : access Inst) return access QtAda6.QtGui.QPageLayout.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageLayout.Class := new QtAda6.QtGui.QPageLayout.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageLayout");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageLayout;
   function pageRanges (self : access Inst) return access QtAda6.QtGui.QPageRanges.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageRanges.Class := new QtAda6.QtGui.QPageRanges.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageRanges");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageRanges;
   function setPageLayout (self : access Inst; pageLayout_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageLayout");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageLayout_P /= null then pageLayout_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setPageLayout;
   function setPageMargins
     (self    : access Inst; margins_P : UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins;
      units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageMargins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if margins_P /= null then margins_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if units_P /= null then
         Dict_SetItemString (Dict, "units", units_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setPageMargins;
   function setPageOrientation
     (self : access Inst; orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setPageOrientation;
   procedure setPageRanges (self : access Inst; ranges_P : access QtAda6.QtGui.QPageRanges.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageRanges");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ranges_P /= null then ranges_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPageRanges;
   function setPageSize
     (self       : access Inst;
      pageSize_P : UNION_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSize_P /= null then pageSize_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setPageSize;
end QtAda6.QtGui.QPagedPaintDevice;
