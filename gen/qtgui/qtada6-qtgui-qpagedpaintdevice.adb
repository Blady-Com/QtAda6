-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpagedpaintdevice.adb
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
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtGui.QPageLayout;
with QtAda6.QtGui.QPageRanges;
with QtAda6.QtCore.QMarginsF;
with QtAda6.QtCore.QMargins;
with QtAda6.QtGui.QPageLayout.Unit;
with QtAda6.QtGui.QPageLayout.Orientation;
with QtAda6.QtGui.QPageSize;
with QtAda6.QtGui.QPageSize.PageSizeId;
with QtAda6.QtCore.QSize;
package body QtAda6.QtGui.QPagedPaintDevice is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function newPage (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "newPage");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end newPage;
   function pageLayout (self : access Inst) return access QtAda6.QtGui.QPageLayout.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPageLayout.Class := new QtAda6.QtGui.QPageLayout.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageLayout");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageLayout;
   function pageRanges (self : access Inst) return access QtAda6.QtGui.QPageRanges.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPageRanges.Class := new QtAda6.QtGui.QPageRanges.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageRanges");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageRanges;
   function setPageLayout (self : access Inst; pageLayout_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageLayout");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, pageLayout_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setPageLayout;
   function setPageMargins
     (self    : access Inst; margins_P : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins;
      units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageMargins");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, units_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setPageMargins;
   function setPageOrientation
     (self : access Inst; orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, orientation_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setPageOrientation;
   procedure setPageRanges (self : access Inst; ranges_P : access QtAda6.QtGui.QPageRanges.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageRanges");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, ranges_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPageRanges;
   function setPageSize
     (self       : access Inst;
      pageSize_P : Union_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setPageSize;
end QtAda6.QtGui.QPagedPaintDevice;
