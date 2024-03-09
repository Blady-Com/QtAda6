-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qicon.adb
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
with QtAda6.QtGui.QIconEngine;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QIcon.Mode;
with QtAda6.QtGui.QIcon.State;
with QtAda6.QtGui.QWindow;
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QPixmap;
package body QtAda6.QtGui.QIcon is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (engine_P : access QtAda6.QtGui.QIconEngine.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if engine_P /= null then engine_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (fileName_P : str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function actualSize
     (self    : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P  : access QtAda6.QtGui.QIcon.Mode.Inst'Class  := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actualSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end actualSize;
   function actualSize
     (self    : access Inst; window_P : access QtAda6.QtGui.QWindow.Inst'Class;
      size_P  : access QtAda6.QtCore.QSize.Inst'Class; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actualSize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end actualSize;
   procedure addFile
     (self    : access Inst; fileName_P : str; size_P : access QtAda6.QtCore.QSize.Inst'Class := null;
      mode_P  : access QtAda6.QtGui.QIcon.Mode.Inst'Class  := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      if size_P /= null then
         Dict_SetItemString (Dict, "size", size_P.Python_Proxy);
      end if;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addFile;
   procedure addPixmap (self : access Inst; path_P : UNION_str_bytes_os_PathLike) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addPixmap;
   procedure addPixmap
     (self    : access Inst; pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      mode_P  : access QtAda6.QtGui.QIcon.Mode.Inst'Class  := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addPixmap;
   function availableSizes
     (self    : access Inst; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return LIST_QtAda6_QtCore_QSize
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "availableSizes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end availableSizes;
   function cacheKey (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cacheKey");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end cacheKey;
   function fallbackSearchPaths return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "fallbackSearchPaths");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end fallbackSearchPaths;
   function fallbackThemeName return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "fallbackThemeName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fallbackThemeName;
   function fromTheme (name_P : str) return access QtAda6.QtGui.QIcon.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                            : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "fromTheme");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromTheme;
   function fromTheme
     (name_P : str; fallback_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap)
      return access QtAda6.QtGui.QIcon.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                            : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "fromTheme");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, (if fallback_P /= null then fallback_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromTheme;
   function hasThemeIcon (name_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "hasThemeIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasThemeIcon;
   function isMask (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isMask");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isMask;
   function isNull (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isNull;
   function name (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end name;
   procedure paint
     (self        : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P      : access QtAda6.QtCore.QRect.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null;
      mode_P      : access QtAda6.QtGui.QIcon.Mode.Inst'Class        := null;
      state_P     : access QtAda6.QtGui.QIcon.State.Inst'Class       := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end paint;
   procedure paint
     (self    : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int;
      h_P     : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null;
      mode_P  : access QtAda6.QtGui.QIcon.Mode.Inst'Class  := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Dict := Dict_New;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end paint;
   function pixmap
     (self    : access Inst; extent_P : int; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (extent_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   function pixmap
     (self    : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class; devicePixelRatio_P : float;
      mode_P  : access QtAda6.QtGui.QIcon.Mode.Inst'Class  := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (devicePixelRatio_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   function pixmap
     (self    : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P  : access QtAda6.QtGui.QIcon.Mode.Inst'Class  := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   function pixmap
     (self    : access Inst; w_P : int; h_P : int; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   function pixmap
     (self    : access Inst; window_P : access QtAda6.QtGui.QWindow.Inst'Class;
      size_P  : access QtAda6.QtCore.QSize.Inst'Class; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      if state_P /= null then
         Dict_SetItemString (Dict, "state", state_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   procedure setFallbackSearchPaths (paths_P : SEQUENCE_str) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "setFallbackSearchPaths");
      List   := List_New (paths_P'Length);
      for ind in paths_P'Range loop
         List_SetItem (List, ssize_t (ind - paths_P'First), Unicode_FromString (paths_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFallbackSearchPaths;
   procedure setFallbackThemeName (name_P : str) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "setFallbackThemeName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFallbackThemeName;
   procedure setIsMask (self : access Inst; isMask_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIsMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (isMask_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIsMask;
   procedure setThemeName (path_P : str) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "setThemeName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setThemeName;
   procedure setThemeSearchPaths (searchpath_P : SEQUENCE_str) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "setThemeSearchPaths");
      List   := List_New (searchpath_P'Length);
      for ind in searchpath_P'Range loop
         List_SetItem (List, ssize_t (ind - searchpath_P'First), Unicode_FromString (searchpath_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setThemeSearchPaths;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function themeName return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "themeName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end themeName;
   function themeSearchPaths return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Method := Object_GetAttrString (Class, "themeSearchPaths");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end themeSearchPaths;
end QtAda6.QtGui.QIcon;
