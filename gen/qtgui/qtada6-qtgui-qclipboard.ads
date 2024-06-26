-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qclipboard.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QClipboard.Mode;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QClipboard is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type TUPLE is null record;
   procedure Finalize (Self : in out Class);
   function changed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- changed(QClipboard::Mode)
   function dataChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- dataChanged()
   function findBufferChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- findBufferChanged()
   function selectionChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- selectionChanged()
   procedure clear (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null);
   function image
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function mimeData
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function ownsClipboard (self : access Inst) return bool;
   function ownsFindBuffer (self : access Inst) return bool;
   function ownsSelection (self : access Inst) return bool;
   function pixmap
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure setImage
     (self   : access Inst; arg_1_P : access QtAda6.QtGui.QImage.Inst'Class;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null);
   procedure setImage
     (self : access Inst; arg_1_P : str; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null);
   procedure setMimeData
     (self   : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null);
   procedure setPixmap
     (self   : access Inst; arg_1_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null);
   procedure setPixmap
     (self   : access Inst; arg_1_P : access QtAda6.QtGui.QImage.Inst'Class;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null);
   procedure setPixmap
     (self : access Inst; arg_1_P : str; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null);
   procedure setText
     (self : access Inst; arg_1_P : str; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null);
   function supportsFindBuffer (self : access Inst) return bool;
   function supportsSelection (self : access Inst) return bool;
   function text (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null) return str;
   function text
     (self : access Inst; subtype_K_P : str; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class := null)
      return TUPLE;
end QtAda6.QtGui.QClipboard;
