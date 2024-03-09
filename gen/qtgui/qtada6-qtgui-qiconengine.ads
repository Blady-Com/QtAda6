-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qiconengine.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QIcon.Mode;
limited with QtAda6.QtGui.QIcon.State;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QDataStream;
package QtAda6.QtGui.QIconEngine is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is new Any;
   subtype LIST_QtAda6_QtCore_QSize is QtAda6.QtCore.QSize.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtGui.QIconEngine.Inst'Class) return Class;
   function actualSize
     (self   : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class;
   procedure addFile
     (self   : access Inst; fileName_P : str; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class);
   procedure addPixmap
     (self   : access Inst; pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class);
   function availableSizes
     (self    : access Inst; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class := null;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class := null) return LIST_QtAda6_QtCore_QSize;
   function clone (self : access Inst) return access QtAda6.QtGui.QIconEngine.Inst'Class;
   function iconName (self : access Inst) return str;
   function isNull (self : access Inst) return bool;
   function key (self : access Inst) return str;
   procedure paint
     (self    : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P  : access QtAda6.QtCore.QRect.Inst'Class; mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      state_P : access QtAda6.QtGui.QIcon.State.Inst'Class);
   function pixmap
     (self   : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function read (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool;
   function scaledPixmap
     (self    : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P  : access QtAda6.QtGui.QIcon.Mode.Inst'Class; state_P : access QtAda6.QtGui.QIcon.State.Inst'Class;
      scale_P : float) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function write (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool;
end QtAda6.QtGui.QIconEngine;
