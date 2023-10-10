-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpainter-pixmapfragment.adb
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
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "PixmapFragment");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (PixmapFragment_P : access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "PixmapFragment");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, PixmapFragment_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "PixmapFragment");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function create
     (pos_P        : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      sourceRect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; scaleX_P : float; scaleY_P : float;
      rotation_P   : float; opacity_P : float) return access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainter.PixmapFragment.Class := new QtAda6.QtGui.QPainter.PixmapFragment.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "PixmapFragment");
      Method := Object_GetAttrString (Class, "create");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Float_FromDouble (scaleX_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (scaleY_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (rotation_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (opacity_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end create;
end QtAda6.QtGui.QPainter.PixmapFragment;
