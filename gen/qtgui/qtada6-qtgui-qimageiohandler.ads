-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimageiohandler.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QImage.Format;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QImageIOHandler.ImageOption;
package QtAda6.QtGui.QImageIOHandler is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QImagestr is new Any;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function allocateImage
     (size_P  : access QtAda6.QtCore.QSize.Inst'Class; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      image_P : UNION_QtAda6_QtGui_QImagestr) return bool;
   function canRead (self : access Inst) return bool;
   function currentImageNumber (self : access Inst) return int;
   function currentImageRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function format_F (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function imageCount (self : access Inst) return int;
   function jumpToImage (self : access Inst; imageNumber_P : int) return bool;
   function jumpToNextImage (self : access Inst) return bool;
   function loopCount (self : access Inst) return int;
   function nextImageDelay (self : access Inst) return int;
   function option_F
     (self : access Inst; option_P : access QtAda6.QtGui.QImageIOHandler.ImageOption.Inst'Class) return Any;
   function read (self : access Inst; image_P : UNION_QtAda6_QtGui_QImagestr) return bool;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setFormat (self : access Inst; format_P : UNION_QtAda6_QtCore_QByteArraybytes);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtGui.QImageIOHandler.ImageOption.Inst'Class; value_P : Any);
   function supportsOption
     (self : access Inst; option_P : access QtAda6.QtGui.QImageIOHandler.ImageOption.Inst'Class) return bool;
   function write (self : access Inst; image_P : UNION_QtAda6_QtGui_QImagestr) return bool;
end QtAda6.QtGui.QImageIOHandler;
