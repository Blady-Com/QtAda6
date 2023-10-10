-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qiconengine.adb
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
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QIcon.Mode;
with QtAda6.QtGui.QIcon.State;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QDataStream;
package body QtAda6.QtGui.QIconEngine is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIconEngine");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QIconEngine.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIconEngine");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function actualSize
     (self   : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actualSize");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, size_P.Python_Proxy);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Tuple_SetItem (Args, 2, state_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end actualSize;
   procedure addFile
     (self   : access Inst; fileName_P : str; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addFile");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, size_P.Python_Proxy);
      Tuple_SetItem (Args, 2, mode_P.Python_Proxy);
      Tuple_SetItem (Args, 3, state_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end addFile;
   procedure addPixmap
     (self   : access Inst; pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Tuple_SetItem (Args, 2, state_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end addPixmap;
   function availableSizes
     (self    : access Inst; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class) return List_QtAda6_QtCore_QSize
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "availableSizes");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Tuple_SetItem (Args, 1, state_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end availableSizes;
   function clone (self : access Inst) return access QtAda6.QtGui.QIconEngine.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QIconEngine.Class := new QtAda6.QtGui.QIconEngine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function iconName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "iconName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end iconName;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function key (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "key");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end key;
   procedure paint
     (self    : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P  : access QtAda6.QtCore.QRect.Inst'Class; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, rect_P.Python_Proxy);
      Tuple_SetItem (Args, 2, mode_P.Python_Proxy);
      Tuple_SetItem (Args, 3, state_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end paint;
   function pixmap_F
     (self   : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, size_P.Python_Proxy);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Tuple_SetItem (Args, 2, state_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap_F;
   function read (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "read");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, in_U_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end read;
   function scaledPixmap_F
     (self    : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P  : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class;
      scale_P : float) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaledPixmap");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, size_P.Python_Proxy);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Tuple_SetItem (Args, 2, state_P.Python_Proxy);
      Tuple_SetItem (Args, 3, Float_FromDouble (scale_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaledPixmap_F;
   function write (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "write");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, out_K_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end write;
end QtAda6.QtGui.QIconEngine;
