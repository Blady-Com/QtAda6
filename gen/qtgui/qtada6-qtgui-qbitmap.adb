-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qbitmap.adb
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
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QImage.Format;
with QtAda6.QtCore.Qt.ImageConversionFlag;
with QtAda6.QtGui.QTransform;
package body QtAda6.QtGui.QBitmap is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QBitmap_P : UNION_QtAda6_QtGui_QBitmapstr) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QBitmap_P /= null then QBitmap_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (fileName_P : str; format_P : bytes := "") return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (format_P)));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (w_P : int; h_P : int) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function fromData
     (size_P       : access QtAda6.QtCore.QSize.Inst'Class; bits_P : bytes;
      monoFormat_P : access QtAda6.QtGui.QImage.Format.Inst'Class := null) return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Method := Object_GetAttrString (Class, "fromData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (bits_P)));
      Tuple_SetItem (Args, 2, (if monoFormat_P /= null then monoFormat_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromData;
   function fromImage
     (image_P : UNION_QtAda6_QtGui_QImagestr; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Method := Object_GetAttrString (Class, "fromImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromImage;
   function fromPixmap
     (pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBitmap");
      Method := Object_GetAttrString (Class, "fromPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromPixmap;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QBitmapstr) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function transformed
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if matrix_P /= null then matrix_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformed;
end QtAda6.QtGui.QBitmap;
