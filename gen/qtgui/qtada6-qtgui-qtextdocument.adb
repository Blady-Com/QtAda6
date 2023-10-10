-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextdocument.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QUrl;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QTextBlock;
with QtAda6.QtGui.QTextDocument.Stacks;
with QtAda6.QtGui.QTextObject;
with QtAda6.QtCore.Qt.CursorMoveStyle;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QTextOption;
with QtAda6.QtGui.QAbstractTextDocumentLayout;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QRegularExpression;
with QtAda6.QtGui.QTextCursor;
with QtAda6.QtGui.QTextDocument.FindFlag;
with QtAda6.QtGui.QTextFrame;
with QtAda6.QtGui.QTextDocument.MetaInformation;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtGui.QPagedPaintDevice;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QTextDocument.MarkdownFeature;
with QtAda6.QtCore.QSize;
package body QtAda6.QtGui.QTextDocument is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocument");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (text_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocument");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addResource (self : access Inst; type_K_P : int; name_P : Union_QtAda6_QtCore_QUrl_str; resource_P : Any)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addResource");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end addResource;
   procedure adjustSize (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "adjustSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end adjustSize;
   function allFormats (self : access Inst) return List_QtAda6_QtGui_QTextFormat is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allFormats");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end allFormats;
   function availableRedoSteps (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "availableRedoSteps");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end availableRedoSteps;
   function availableUndoSteps (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "availableUndoSteps");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end availableUndoSteps;
   function baseUrl (self : access Inst) return access QtAda6.QtCore.QUrl.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "baseUrl");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end baseUrl;
   function baselineOffset (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "baselineOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end baselineOffset;
   function begin_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "begin");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end begin_K;
   function blockCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end blockCount;
   function characterAt (self : access Inst; pos_P : int) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "characterAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end characterAt;
   function characterCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "characterCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end characterCount;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   procedure clearUndoRedoStacks
     (self : access Inst; historyToClear_P : access QtAda6.QtGui.QTextDocument.Stacks.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearUndoRedoStacks");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, historyToClear_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end clearUndoRedoStacks;
   function clone
     (self : access Inst; parent_P : Optional_QtAda6_QtCore_QObject) return access QtAda6.QtGui.QTextDocument.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextDocument.Class := new QtAda6.QtGui.QTextDocument.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clone");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function createObject
     (self : access Inst; f_P : access QtAda6.QtGui.QTextFormat.Inst'Class)
      return access QtAda6.QtGui.QTextObject.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextObject.Class := new QtAda6.QtGui.QTextObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createObject");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, f_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createObject;
   function defaultCursorMoveStyle (self : access Inst) return access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.CursorMoveStyle.Class := new QtAda6.QtCore.Qt.CursorMoveStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "defaultCursorMoveStyle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultCursorMoveStyle;
   function defaultFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "defaultFont");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultFont;
   function defaultStyleSheet (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "defaultStyleSheet");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end defaultStyleSheet;
   function defaultTextOption (self : access Inst) return access QtAda6.QtGui.QTextOption.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextOption.Class := new QtAda6.QtGui.QTextOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "defaultTextOption");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultTextOption;
   function documentLayout (self : access Inst) return access QtAda6.QtGui.QAbstractTextDocumentLayout.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QAbstractTextDocumentLayout.Class :=
        new QtAda6.QtGui.QAbstractTextDocumentLayout.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "documentLayout");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end documentLayout;
   function documentMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "documentMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end documentMargin;
   procedure drawContents
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawContents");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end drawContents;
   function end_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "end");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end end_K;
   function find_F
     (self      : access Inst; expr_P : Union_QtAda6_QtCore_QRegularExpression_str;
      cursor_P  : access QtAda6.QtGui.QTextCursor.Inst'Class;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCursor.Class := new QtAda6.QtGui.QTextCursor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "find");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, cursor_P.Python_Proxy);
      Tuple_SetItem (Args, 2, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end find_F;
   function find_F
     (self      : access Inst; expr_P : Union_QtAda6_QtCore_QRegularExpression_str; from_U_P : int;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCursor.Class := new QtAda6.QtGui.QTextCursor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "find");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end find_F;
   function find_F
     (self      : access Inst; subString_P : str; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCursor.Class := new QtAda6.QtGui.QTextCursor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "find");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (subString_P));
      Tuple_SetItem (Args, 1, cursor_P.Python_Proxy);
      Tuple_SetItem (Args, 2, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end find_F;
   function find_F
     (self      : access Inst; subString_P : str; from_U_P : int;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCursor.Class := new QtAda6.QtGui.QTextCursor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "find");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (subString_P));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end find_F;
   function findBlock (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findBlock");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end findBlock;
   function findBlockByLineNumber
     (self : access Inst; blockNumber_P : int) return access QtAda6.QtGui.QTextBlock.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findBlockByLineNumber");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (blockNumber_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end findBlockByLineNumber;
   function findBlockByNumber (self : access Inst; blockNumber_P : int) return access QtAda6.QtGui.QTextBlock.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findBlockByNumber");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (blockNumber_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end findBlockByNumber;
   function firstBlock (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "firstBlock");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end firstBlock;
   function frameAt (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextFrame.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFrame.Class := new QtAda6.QtGui.QTextFrame.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "frameAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end frameAt;
   function idealWidth (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "idealWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end idealWidth;
   function indentWidth (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indentWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end indentWidth;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isLayoutEnabled (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLayoutEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLayoutEnabled;
   function isModified (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isModified");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isModified;
   function isRedoAvailable (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRedoAvailable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRedoAvailable;
   function isUndoAvailable (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUndoAvailable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isUndoAvailable;
   function isUndoRedoEnabled (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUndoRedoEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isUndoRedoEnabled;
   function lastBlock (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "lastBlock");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lastBlock;
   function lineCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lineCount;
   function loadResource (self : access Inst; type_K_P : int; name_P : Union_QtAda6_QtCore_QUrl_str) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadResource");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end loadResource;
   procedure markContentsDirty (self : access Inst; from_U_P : int; length_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "markContentsDirty");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (length_P));
      Result := Object_CallObject (Method, Args, True);
   end markContentsDirty;
   function maximumBlockCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumBlockCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end maximumBlockCount;
   function metaInformation_F
     (self : access Inst; info_P : access QtAda6.QtGui.QTextDocument.MetaInformation.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "metaInformation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, info_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end metaInformation_F;
   function object (self : access Inst; objectIndex_P : int) return access QtAda6.QtGui.QTextObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextObject.Class := new QtAda6.QtGui.QTextObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "object");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (objectIndex_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end object;
   function objectForFormat
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QTextFormat.Inst'Class)
      return access QtAda6.QtGui.QTextObject.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextObject.Class := new QtAda6.QtGui.QTextObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "objectForFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end objectForFormat;
   function pageCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pageCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pageCount;
   function pageSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageSize;
   procedure print_U (self : access Inst; printer_P : access QtAda6.QtGui.QPagedPaintDevice.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "print_");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, printer_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end print_U;
   procedure redo (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redo");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end redo;
   procedure redo (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cursor_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end redo;
   function resource_F (self : access Inst; type_K_P : int; name_P : Union_QtAda6_QtCore_QUrl_str) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resource");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end resource_F;
   function revision (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "revision");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end revision;
   function rootFrame (self : access Inst) return access QtAda6.QtGui.QTextFrame.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFrame.Class := new QtAda6.QtGui.QTextFrame.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rootFrame");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rootFrame;
   procedure setBaseUrl (self : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBaseUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setBaseUrl;
   procedure setBaselineOffset (self : access Inst; baseline_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBaselineOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (baseline_P));
      Result := Object_CallObject (Method, Args, True);
   end setBaselineOffset;
   procedure setDefaultCursorMoveStyle
     (self : access Inst; style_P : access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultCursorMoveStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, style_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setDefaultCursorMoveStyle;
   procedure setDefaultFont (self : access Inst; font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setDefaultFont;
   procedure setDefaultStyleSheet (self : access Inst; sheet_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultStyleSheet");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (sheet_P));
      Result := Object_CallObject (Method, Args, True);
   end setDefaultStyleSheet;
   procedure setDefaultTextOption
     (self : access Inst; option_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultTextOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setDefaultTextOption;
   procedure setDocumentLayout
     (self : access Inst; layout_P : access QtAda6.QtGui.QAbstractTextDocumentLayout.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDocumentLayout");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, layout_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setDocumentLayout;
   procedure setDocumentMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDocumentMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setDocumentMargin;
   procedure setHtml (self : access Inst; html_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHtml");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (html_P));
      Result := Object_CallObject (Method, Args, True);
   end setHtml;
   procedure setIndentWidth (self : access Inst; width_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIndentWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setIndentWidth;
   procedure setLayoutEnabled (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayoutEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setLayoutEnabled;
   procedure setMarkdown
     (self : access Inst; markdown_P : str; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMarkdown");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (markdown_P));
      Tuple_SetItem (Args, 1, features_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setMarkdown;
   procedure setMaximumBlockCount (self : access Inst; maximum_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumBlockCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maximum_P));
      Result := Object_CallObject (Method, Args, True);
   end setMaximumBlockCount;
   procedure setMetaInformation
     (self : access Inst; info_P : access QtAda6.QtGui.QTextDocument.MetaInformation.Inst'Class; arg_2_P : str)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMetaInformation");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, info_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (arg_2_P));
      Result := Object_CallObject (Method, Args, True);
   end setMetaInformation;
   procedure setModified (self : access Inst; m_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModified");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (m_P));
      Result := Object_CallObject (Method, Args, True);
   end setModified;
   procedure setPageSize (self : access Inst; size_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPageSize;
   procedure setPlainText (self : access Inst; text_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPlainText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setPlainText;
   procedure setSubScriptBaseline (self : access Inst; baseline_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSubScriptBaseline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (baseline_P));
      Result := Object_CallObject (Method, Args, True);
   end setSubScriptBaseline;
   procedure setSuperScriptBaseline (self : access Inst; baseline_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSuperScriptBaseline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (baseline_P));
      Result := Object_CallObject (Method, Args, True);
   end setSuperScriptBaseline;
   procedure setTextWidth (self : access Inst; width_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setTextWidth;
   procedure setUndoRedoEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUndoRedoEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setUndoRedoEnabled;
   procedure setUseDesignMetrics (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUseDesignMetrics");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setUseDesignMetrics;
   function size (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   function subScriptBaseline (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subScriptBaseline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end subScriptBaseline;
   function superScriptBaseline (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "superScriptBaseline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end superScriptBaseline;
   function textWidth (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end textWidth;
   function toHtml (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toHtml");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toHtml;
   function toMarkdown
     (self : access Inst; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toMarkdown");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, features_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toMarkdown;
   function toPlainText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPlainText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toPlainText;
   function toRawText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toRawText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toRawText;
   procedure undo (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "undo");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end undo;
   procedure undo (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "undo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cursor_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end undo;
   function useDesignMetrics (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "useDesignMetrics");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end useDesignMetrics;
end QtAda6.QtGui.QTextDocument;
