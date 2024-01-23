-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qoffscreensurface.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QSurface;
with QtAda6.QtGui.QScreen;
with QtAda6.QtGui.QSurfaceFormat;
with QtAda6.QtGui.QSurfaceFormat.FormatOption;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QSurface.SurfaceType;
package body QtAda6.QtGui.QOffscreenSurface is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function screenChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "screenChanged"));
   end screenChanged;
   function Create
     (screen_P : access QtAda6.QtGui.QScreen.Inst'Class  := null;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOffscreenSurface");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure create (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "create");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end create;
   procedure destroy (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destroy");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end destroy;
   function format (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QSurfaceFormat.Class := new QtAda6.QtGui.QSurfaceFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "format");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function requestedFormat (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QSurfaceFormat.Class := new QtAda6.QtGui.QSurfaceFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "requestedFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end requestedFormat;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolveInterface");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (name_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (revision_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resolveInterface;
   function screen (self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QScreen.Class := new QtAda6.QtGui.QScreen.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screen");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screen;
   procedure setFormat
     (self : access Inst; format_P : UNION_QtAda6_QtGui_QSurfaceFormatQtAda6_QtGui_QSurfaceFormat_FormatOption)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFormat;
   procedure setScreen (self : access Inst; screen_P : access QtAda6.QtGui.QScreen.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScreen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setScreen;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   function surfaceHandle (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "surfaceHandle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end surfaceHandle;
   function surfaceType (self : access Inst) return access QtAda6.QtGui.QSurface.SurfaceType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QSurface.SurfaceType.Class := new QtAda6.QtGui.QSurface.SurfaceType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "surfaceType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end surfaceType;
end QtAda6.QtGui.QOffscreenSurface;
