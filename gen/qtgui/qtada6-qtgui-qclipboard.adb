-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qclipboard.adb
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
with QtAda6.QtGui.QClipboard.Mode;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtGui.QPixmap;
package body QtAda6.QtGui.QClipboard is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function changed (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "changed"));
   end changed;
   function dataChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "dataChanged"));
   end dataChanged;
   function findBufferChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "findBufferChanged"));
   end findBufferChanged;
   function selectionChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "selectionChanged"));
   end selectionChanged;
   procedure clear (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function image
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
      return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "image");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end image;
   function mimeData
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
      return access QtAda6.QtCore.QMimeData.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeData;
   function ownsClipboard (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ownsClipboard");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end ownsClipboard;
   function ownsFindBuffer (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ownsFindBuffer");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end ownsFindBuffer;
   function ownsSelection (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ownsSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end ownsSelection;
   function pixmap
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   procedure setImage
     (self   : access Inst; arg_1_P : UNION_QtAda6_QtGui_QImagestr;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setImage;
   procedure setMimeData
     (self   : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMimeData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMimeData;
   procedure setPixmap
     (self   : access Inst; arg_1_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPixmap;
   procedure setText
     (self : access Inst; arg_1_P : str; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setText;
   function supportsFindBuffer (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportsFindBuffer");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end supportsFindBuffer;
   function supportsSelection (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportsSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end supportsSelection;
   function text (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
   function text
     (self : access Inst; subtype_K_P : str; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
      return TUPLE
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (subtype_K_P));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end text;
end QtAda6.QtGui.QClipboard;
