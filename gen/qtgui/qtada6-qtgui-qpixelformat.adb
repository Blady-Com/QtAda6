-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpixelformat.adb
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
with QtAda6.QtGui.QPixelFormat.ColorModel;
with QtAda6.QtGui.QPixelFormat.AlphaUsage;
with QtAda6.QtGui.QPixelFormat.AlphaPosition;
with QtAda6.QtGui.QPixelFormat.AlphaPremultiplied;
with QtAda6.QtGui.QPixelFormat.TypeInterpretation;
with QtAda6.QtGui.QPixelFormat.ByteOrder;
with QtAda6.QtGui.QPixelFormat.YUVLayout;
package body QtAda6.QtGui.QPixelFormat is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QPixelFormat_P : access QtAda6.QtGui.QPixelFormat.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QPixelFormat_P /= null then QPixelFormat_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (colorModel_P : access QtAda6.QtGui.QPixelFormat.ColorModel.Inst'Class; firstSize_P : int; secondSize_P : int;
      thirdSize_P          : int; fourthSize_P : int; fifthSize_P : int; alphaSize_P : int;
      alphaUsage_P         : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      alphaPosition_P      : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      premultiplied_P      : access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class;
      typeInterpretation_P : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class;
      byteOrder_P : access QtAda6.QtGui.QPixelFormat.ByteOrder.Inst'Class := null; subEnum_P : int := 0) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Args  := Tuple_New (13);
      Tuple_SetItem (Args, 0, (if colorModel_P /= null then colorModel_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (firstSize_P));
      Tuple_SetItem (Args, 2, Long_FromLong (secondSize_P));
      Tuple_SetItem (Args, 3, Long_FromLong (thirdSize_P));
      Tuple_SetItem (Args, 4, Long_FromLong (fourthSize_P));
      Tuple_SetItem (Args, 5, Long_FromLong (fifthSize_P));
      Tuple_SetItem (Args, 6, Long_FromLong (alphaSize_P));
      Tuple_SetItem (Args, 7, (if alphaUsage_P /= null then alphaUsage_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 8, (if alphaPosition_P /= null then alphaPosition_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 9, (if premultiplied_P /= null then premultiplied_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 10, (if typeInterpretation_P /= null then typeInterpretation_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 11, (if byteOrder_P /= null then byteOrder_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 12, Long_FromLong (subEnum_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function alphaPosition_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.AlphaPosition.Class := new QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alphaPosition");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alphaPosition_F;
   function alphaSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alphaSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end alphaSize;
   function alphaUsage_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.AlphaUsage.Class := new QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alphaUsage");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alphaUsage_F;
   function bitsPerPixel (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bitsPerPixel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end bitsPerPixel;
   function blackSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blackSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end blackSize;
   function blueSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blueSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end blueSize;
   function brightnessSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "brightnessSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end brightnessSize;
   function byteOrder_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.ByteOrder.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.ByteOrder.Class := new QtAda6.QtGui.QPixelFormat.ByteOrder.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "byteOrder");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end byteOrder_F;
   function channelCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "channelCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end channelCount;
   function colorModel_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.ColorModel.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.ColorModel.Class := new QtAda6.QtGui.QPixelFormat.ColorModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "colorModel");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end colorModel_F;
   function cyanSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cyanSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end cyanSize;
   function greenSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "greenSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end greenSize;
   function hueSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hueSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hueSize;
   function lightnessSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lightnessSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lightnessSize;
   function magentaSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "magentaSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end magentaSize;
   function premultiplied_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Class :=
        new QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "premultiplied");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end premultiplied_F;
   function redSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end redSize;
   function saturationSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "saturationSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end saturationSize;
   function subEnum (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subEnum");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end subEnum;
   function typeInterpretation_F
     (self : access Inst) return access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixelFormat.TypeInterpretation.Class :=
        new QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "typeInterpretation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end typeInterpretation_F;
   function yellowSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "yellowSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end yellowSize;
   function yuvLayout_F (self : access Inst) return access QtAda6.QtGui.QPixelFormat.YUVLayout.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.YUVLayout.Class := new QtAda6.QtGui.QPixelFormat.YUVLayout.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "yuvLayout");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end yuvLayout_F;
end QtAda6.QtGui.QPixelFormat;
