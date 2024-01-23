-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpixmapcache.adb
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
with QtAda6.QtGui.QPixmapCache.Key;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QImage;
package body QtAda6.QtGui.QPixmapCache is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function cacheLimit return int is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "cacheLimit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end cacheLimit;
   procedure clear is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function find
     (key_P    : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return bool
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "find");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end find;
   function find (key_P : str; pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return bool is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "find");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end find;
   procedure find (self : access Inst; arg_1_P : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "find");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end find;
   procedure find (self : access Inst; arg_1_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "find");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end find;
   function insert (key_P : str; pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return bool is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "insert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end insert;
   function insert
     (pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr)
      return access QtAda6.QtGui.QPixmapCache.Key.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmapCache.Key.Class := new QtAda6.QtGui.QPixmapCache.Key.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "insert");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insert;
   procedure remove (key_P : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end remove;
   procedure remove (key_P : str) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
   end remove;
   function replace
     (key_P    : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return bool
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "replace");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end replace;
   procedure setCacheLimit (arg_1_P : int) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmapCache");
      Method := Object_GetAttrString (Class, "setCacheLimit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setCacheLimit;
end QtAda6.QtGui.QPixmapCache;
