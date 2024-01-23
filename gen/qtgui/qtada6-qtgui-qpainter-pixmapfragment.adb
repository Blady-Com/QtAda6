-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpainter-pixmapfragment.adb
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
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
package body QtAda6.QtGui.QPainter.PixmapFragment is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "PixmapFragment");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (PixmapFragment_P : access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "PixmapFragment");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if PixmapFragment_P /= null then PixmapFragment_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "PixmapFragment");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function create
     (pos_P        : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      sourceRect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect; scaleX_P : float := 0.0; scaleY_P : float := 0.0;
      rotation_P : float := 0.0; opacity_P : float := 0.0) return access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainter.PixmapFragment.Class := new QtAda6.QtGui.QPainter.PixmapFragment.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "PixmapFragment");
      Method := Object_GetAttrString (Class, "create");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Float_FromDouble (scaleX_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (scaleY_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (rotation_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (opacity_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end create;
end QtAda6.QtGui.QPainter.PixmapFragment;
