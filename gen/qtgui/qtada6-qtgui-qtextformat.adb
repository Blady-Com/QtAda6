-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextformat.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QBrush;
with QtAda6.QtGui.QColor;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtGui.QTextLength;
with QtAda6.QtGui.QPen;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QTextBlockFormat;
with QtAda6.QtGui.QTextCharFormat;
with QtAda6.QtGui.QTextFrameFormat;
with QtAda6.QtGui.QTextImageFormat;
with QtAda6.QtGui.QTextListFormat;
with QtAda6.QtGui.QTextTableCellFormat;
with QtAda6.QtGui.QTextTableFormat;
package body QtAda6.QtGui.QTextFormat is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (rhs_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, rhs_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (type_K_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function background (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "background");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end background;
   function boolProperty (self : access Inst; propertyId_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boolProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end boolProperty;
   function brushProperty (self : access Inst; propertyId_P : int) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "brushProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brushProperty;
   procedure clearBackground (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearBackground");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearBackground;
   procedure clearForeground (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearForeground");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearForeground;
   procedure clearProperty (self : access Inst; propertyId_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result := Object_CallObject (Method, Args, True);
   end clearProperty;
   function colorProperty (self : access Inst; propertyId_P : int) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "colorProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end colorProperty;
   function doubleProperty (self : access Inst; propertyId_P : int) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doubleProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end doubleProperty;
   function foreground (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "foreground");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end foreground;
   function hasProperty (self : access Inst; propertyId_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasProperty;
   function intProperty (self : access Inst; propertyId_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end intProperty;
   function isBlockFormat (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBlockFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isBlockFormat;
   function isCharFormat (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCharFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCharFormat;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isFrameFormat (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFrameFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isFrameFormat;
   function isImageFormat (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isImageFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isImageFormat;
   function isListFormat (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isListFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isListFormat;
   function isTableCellFormat (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTableCellFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isTableCellFormat;
   function isTableFormat (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTableFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isTableFormat;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function layoutDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "layoutDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layoutDirection;
   function lengthProperty (self : access Inst; propertyId_P : int) return access QtAda6.QtGui.QTextLength.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextLength.Class := new QtAda6.QtGui.QTextLength.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lengthProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lengthProperty;
   function lengthVectorProperty (self : access Inst; propertyId_P : int) return List_QtAda6_QtGui_QTextLength is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lengthVectorProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end lengthVectorProperty;
   procedure merge (self : access Inst; other_P : access QtAda6.QtGui.QTextFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "merge");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end merge;
   function objectIndex (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "objectIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end objectIndex;
   function objectType_F (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "objectType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end objectType_F;
   function penProperty (self : access Inst; propertyId_P : int) return access QtAda6.QtGui.QPen.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPen.Class := new QtAda6.QtGui.QPen.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "penProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end penProperty;
   function properties (self : access Inst) return Dict_int_Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "properties");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end properties;
   function property_F (self : access Inst; propertyId_P : int) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "property");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end property_F;
   function propertyCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "propertyCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end propertyCount;
   procedure setBackground
     (self    : access Inst;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setBackground;
   procedure setForeground
     (self    : access Inst;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setForeground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setForeground;
   procedure setLayoutDirection (self : access Inst; direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayoutDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setLayoutDirection;
   procedure setObjectIndex (self : access Inst; object_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setObjectIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (object_P));
      Result := Object_CallObject (Method, Args, True);
   end setObjectIndex;
   procedure setObjectType (self : access Inst; type_K_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setObjectType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Result := Object_CallObject (Method, Args, True);
   end setObjectType;
   procedure setProperty (self : access Inst; propertyId_P : int; lengths_P : Sequence_QtAda6_QtGui_QTextLength) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProperty");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setProperty;
   procedure setProperty (self : access Inst; propertyId_P : int; value_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProperty");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Tuple_SetItem (Args, 1, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end setProperty;
   function stringProperty (self : access Inst; propertyId_P : int) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stringProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (propertyId_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end stringProperty;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QTextFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toBlockFormat (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlockFormat.Class := new QtAda6.QtGui.QTextBlockFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toBlockFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toBlockFormat;
   function toCharFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toCharFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toCharFormat;
   function toFrameFormat (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFrameFormat.Class := new QtAda6.QtGui.QTextFrameFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toFrameFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toFrameFormat;
   function toImageFormat (self : access Inst) return access QtAda6.QtGui.QTextImageFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextImageFormat.Class := new QtAda6.QtGui.QTextImageFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toImageFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toImageFormat;
   function toListFormat (self : access Inst) return access QtAda6.QtGui.QTextListFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextListFormat.Class := new QtAda6.QtGui.QTextListFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toListFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toListFormat;
   function toTableCellFormat (self : access Inst) return access QtAda6.QtGui.QTextTableCellFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextTableCellFormat.Class := new QtAda6.QtGui.QTextTableCellFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toTableCellFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTableCellFormat;
   function toTableFormat (self : access Inst) return access QtAda6.QtGui.QTextTableFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextTableFormat.Class := new QtAda6.QtGui.QTextTableFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toTableFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTableFormat;
   function type_K (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "type");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end type_K;
end QtAda6.QtGui.QTextFormat;
