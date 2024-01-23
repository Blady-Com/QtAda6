-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpaintevent.adb
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
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtGui.QPolygon;
package body QtAda6.QtGui.QPaintEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (paintRect_P : access QtAda6.QtCore.QRect.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if paintRect_P /= null then paintRect_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (paintRegion_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if paintRegion_P /= null then paintRegion_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function clone (self : access Inst) return access QtAda6.QtGui.QPaintEvent.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPaintEvent.Class := new QtAda6.QtGui.QPaintEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function region (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "region");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end region;
end QtAda6.QtGui.QPaintEvent;
