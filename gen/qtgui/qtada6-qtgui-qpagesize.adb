-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpagesize.adb
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
with QtAda6.QtGui.QPageSize.PageSizeId;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QPageSize.SizeMatchPolicy;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtGui.QPageSize.Unit;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
package body QtAda6.QtGui.QPageSize is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (other_P : UNION_QtAda6_QtGui_QPageSizeQtAda6_QtGui_QPageSize_PageSizeIdQtAda6_QtCore_QSize) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (pointSize_P   : access QtAda6.QtCore.QSize.Inst'Class; name_P : str := "";
      matchPolicy_P : access QtAda6.QtGui.QPageSize.SizeMatchPolicy.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pointSize_P /= null then pointSize_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 2, (if matchPolicy_P /= null then matchPolicy_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (size_P : UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize; units_P : access QtAda6.QtGui.QPageSize.Unit.Inst'Class;
      name_P : str := ""; matchPolicy_P : access QtAda6.QtGui.QPageSize.SizeMatchPolicy.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 3, (if matchPolicy_P /= null then matchPolicy_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function definitionSize
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "definitionSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end definitionSize;
   function definitionSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "definitionSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end definitionSize;
   function definitionUnits
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class)
      return access QtAda6.QtGui.QPageSize.Unit.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageSize.Unit.Class := new QtAda6.QtGui.QPageSize.Unit.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "definitionUnits");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end definitionUnits;
   function definitionUnits (self : access Inst) return access QtAda6.QtGui.QPageSize.Unit.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPageSize.Unit.Class := new QtAda6.QtGui.QPageSize.Unit.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "definitionUnits");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end definitionUnits;
   function id_F
     (pointSize_P   : access QtAda6.QtCore.QSize.Inst'Class;
      matchPolicy_P : access QtAda6.QtGui.QPageSize.SizeMatchPolicy.Inst'Class := null)
      return access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageSize.PageSizeId.Class := new QtAda6.QtGui.QPageSize.PageSizeId.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "id");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pointSize_P /= null then pointSize_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if matchPolicy_P /= null then matchPolicy_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end id_F;
   function id_F (self : access Inst) return access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageSize.PageSizeId.Class := new QtAda6.QtGui.QPageSize.PageSizeId.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "id");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end id_F;
   function id_F
     (size_P : UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize; units_P : access QtAda6.QtGui.QPageSize.Unit.Inst'Class;
      matchPolicy_P : access QtAda6.QtGui.QPageSize.SizeMatchPolicy.Inst'Class := null)
      return access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageSize.PageSizeId.Class := new QtAda6.QtGui.QPageSize.PageSizeId.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "id");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if matchPolicy_P /= null then matchPolicy_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end id_F;
   function id_F (windowsId_P : int) return access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPageSize.PageSizeId.Class := new QtAda6.QtGui.QPageSize.PageSizeId.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "id");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (windowsId_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end id_F;
   function isEquivalentTo
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QPageSizeQtAda6_QtGui_QPageSize_PageSizeIdQtAda6_QtCore_QSize)
      return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEquivalentTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEquivalentTo;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function key (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "key");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end key;
   function key (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "key");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end key;
   function name (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "name");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function name (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function rect
     (self : access Inst; units_P : access QtAda6.QtGui.QPageSize.Unit.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function rectPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rectPixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rectPixels;
   function rectPoints (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rectPoints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rectPoints;
   function size_F
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class;
      units_P      : access QtAda6.QtGui.QPageSize.Unit.Inst'Class) return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "size");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size_F;
   function size_F
     (self : access Inst; units_P : access QtAda6.QtGui.QPageSize.Unit.Inst'Class)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if units_P /= null then units_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size_F;
   function sizePixels
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class; resolution_P : int)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "sizePixels");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (resolution_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizePixels;
   function sizePixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizePixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizePixels;
   function sizePoints
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "sizePoints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizePoints;
   function sizePoints (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizePoints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizePoints;
   procedure swap
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QPageSizeQtAda6_QtGui_QPageSize_PageSizeIdQtAda6_QtCore_QSize)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function windowsId (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return int is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      Method := Object_GetAttrString (Class, "windowsId");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pageSizeId_P /= null then pageSizeId_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end windowsId;
   function windowsId (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowsId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end windowsId;
end QtAda6.QtGui.QPageSize;
