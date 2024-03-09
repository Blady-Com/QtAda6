-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixelformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPixelFormat.ColorModel;
limited with QtAda6.QtGui.QPixelFormat.AlphaUsage;
limited with QtAda6.QtGui.QPixelFormat.AlphaPosition;
limited with QtAda6.QtGui.QPixelFormat.AlphaPremultiplied;
limited with QtAda6.QtGui.QPixelFormat.TypeInterpretation;
limited with QtAda6.QtGui.QPixelFormat.ByteOrder;
limited with QtAda6.QtGui.QPixelFormat.YUVLayout;
package QtAda6.QtGui.QPixelFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QPixelFormat_P : access QtAda6.QtGui.QPixelFormat.Inst'Class) return Class;
   function Create
     (colorModel_P : access QtAda6.QtGui.QPixelFormat.ColorModel.Inst'Class; firstSize_P : int; secondSize_P : int;
      thirdSize_P          : int; fourthSize_P : int; fifthSize_P : int; alphaSize_P : int;
      alphaUsage_P         : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      alphaPosition_P      : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      premultiplied_P      : access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class;
      typeInterpretation_P : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class;
      byteOrder_P : access QtAda6.QtGui.QPixelFormat.ByteOrder.Inst'Class := null; subEnum_P : int := 0) return Class;
   procedure U_copy_U;
   function alphaPosition_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
   function alphaSize (self : access Inst) return int;
   function alphaUsage_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
   function bitsPerPixel (self : access Inst) return int;
   function blackSize (self : access Inst) return int;
   function blueSize (self : access Inst) return int;
   function brightnessSize (self : access Inst) return int;
   function byteOrder_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.ByteOrder.Inst'Class;
   function channelCount (self : access Inst) return int;
   function colorModel_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.ColorModel.Inst'Class;
   function cyanSize (self : access Inst) return int;
   function greenSize (self : access Inst) return int;
   function hueSize (self : access Inst) return int;
   function lightnessSize (self : access Inst) return int;
   function magentaSize (self : access Inst) return int;
   function premultiplied (self : access Inst) return access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class;
   function redSize (self : access Inst) return int;
   function saturationSize (self : access Inst) return int;
   function subEnum (self : access Inst) return int;
   function typeInterpretation_F
     (self : access Inst) return access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class;
   function yellowSize (self : access Inst) return int;
   function yuvLayout_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.YUVLayout.Inst'Class;
end QtAda6.QtGui.QPixelFormat;
