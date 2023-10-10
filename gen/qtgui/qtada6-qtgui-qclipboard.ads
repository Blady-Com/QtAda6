-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qclipboard.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QClipboard.Mode;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QClipboard is
   type ClassVar_Signal is access Any;
   type Union_QtAda6_QtGui_QImage_str is access Any;
   type Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   changed           : ClassVar_Signal;-- changed(QClipboard::Mode)
   dataChanged       : ClassVar_Signal;-- dataChanged()
   findBufferChanged : ClassVar_Signal;-- findBufferChanged()
   selectionChanged  : ClassVar_Signal;-- selectionChanged()
   procedure clear (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class);
   function image
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function mimeData
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function ownsClipboard (self : access Inst) return bool;
   function ownsFindBuffer (self : access Inst) return bool;
   function ownsSelection (self : access Inst) return bool;
   function pixmap
     (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure setImage
     (self   : access Inst; arg_1_P : Union_QtAda6_QtGui_QImage_str;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class);
   procedure setMimeData
     (self   : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class);
   procedure setPixmap
     (self   : access Inst; arg_1_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class);
   procedure setText (self : access Inst; arg_1_P : str; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class);
   function supportsFindBuffer (self : access Inst) return bool;
   function supportsSelection (self : access Inst) return bool;
   function text (self : access Inst; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class) return str;
   function text
     (self : access Inst; subtype_K_P : str; mode_P : access QtAda6.QtGui.QClipboard.Mode.Inst'Class) return Tuple;
end QtAda6.QtGui.QClipboard;
