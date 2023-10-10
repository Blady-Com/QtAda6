-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qicon.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QIconEngine;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QIcon.Mode;
limited with QtAda6.QtGui.QIcon.State;
limited with QtAda6.QtGui.QWindow;
limited with OS.PathLike;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
package QtAda6.QtGui.QIcon is
   type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
   type Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is access Any;
   type Union_str_bytes_os_PathLike is access Any;
   type List_QtAda6_QtCore_QSize is access Any;
   type List_str is access Any;
   type Sequence_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (engine_P : access QtAda6.QtGui.QIconEngine.Inst'Class) return Class;
   function Create (fileName_P : str) return Class;
   function Create (other_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) return Class;
   function Create (pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function actualSize
     (self   : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function actualSize
     (self    : access Inst; window_P : access QtAda6.QtGui.QWindow.Inst'Class;
      size_P  : access QtAda6.QtCore.QSize.Inst'Class; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure addFile
     (self   : access Inst; fileName_P : str; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class);
   procedure addPixmap (self : access Inst; path_P : Union_str_bytes_os_PathLike);
   procedure addPixmap
     (self   : access Inst; pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class);
   function availableSizes
     (self    : access Inst; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class) return List_QtAda6_QtCore_QSize;
   function cacheKey (self : access Inst) return int;
   function fallbackSearchPaths return List_str;
   function fallbackThemeName return str;
   function fromTheme (name_P : str) return access QtAda6.QtGui.QIcon.Inst'Class;
   function fromTheme
     (name_P : str; fallback_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap)
      return access QtAda6.QtGui.QIcon.Inst'Class;
   function hasThemeIcon (name_P : str) return bool;
   function isMask (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function name (self : access Inst) return str;
   procedure paint
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class);
   procedure paint
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int;
      h_P    : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class);
   function pixmap
     (self    : access Inst; extent_P : int; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function pixmap
     (self   : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class; devicePixelRatio_P : float;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function pixmap
     (self   : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function pixmap
     (self    : access Inst; w_P : int; h_P : int; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function pixmap
     (self    : access Inst; window_P : access QtAda6.QtGui.QWindow.Inst'Class;
      size_P  : access QtAda6.QtCore.QSize.Inst'Class; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure setFallbackSearchPaths (paths_P : Sequence_str);
   procedure setFallbackThemeName (name_P : str);
   procedure setIsMask (self : access Inst; isMask_P : bool);
   procedure setThemeName (path_P : str);
   procedure setThemeSearchPaths (searchpath_P : Sequence_str);
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   function themeName return str;
   function themeSearchPaths return List_str;
end QtAda6.QtGui.QIcon;
