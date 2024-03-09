-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfontdatabase.adb
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
with QtAda6.QtGui.QFontDatabase;
with QtAda6.QtGui.QFontDatabase.WritingSystem;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QFontDatabase.SystemFont;
package body QtAda6.QtGui.QFontDatabase is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QFontDatabase_P : access QtAda6.QtGui.QFontDatabase.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QFontDatabase_P /= null then QFontDatabase_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function addApplicationFont (fileName_P : str) return int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "addApplicationFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end addApplicationFont;
   function addApplicationFontFromData (fontData_P : UNION_QtAda6_QtCore_QByteArray_bytes) return int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "addApplicationFontFromData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fontData_P /= null then fontData_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end addApplicationFontFromData;
   function applicationFontFamilies (id_P : int) return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "applicationFontFamilies");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end applicationFontFamilies;
   function bold (family_P : str; style_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "bold");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (style_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end bold;
   function families
     (writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class := null) return LIST_str
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "families");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if writingSystem_P /= null then
         Dict_SetItemString (Dict, "writingSystem", writingSystem_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end families;
   function font (family_P : str; style_P : str; pointSize_P : int) return access QtAda6.QtGui.QFont.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                            : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "font");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (style_P));
      Tuple_SetItem (Args, 2, Long_FromLong (pointSize_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function hasFamily (family_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "hasFamily");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasFamily;
   function isBitmapScalable (family_P : str; style_P : str := "") return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "isBitmapScalable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict := Dict_New;
      if style_P /= "" then
         Dict_SetItemString (Dict, "style", Unicode_FromString (style_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isBitmapScalable;
   function isFixedPitch (family_P : str; style_P : str := "") return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "isFixedPitch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict := Dict_New;
      if style_P /= "" then
         Dict_SetItemString (Dict, "style", Unicode_FromString (style_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isFixedPitch;
   function isPrivateFamily (family_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "isPrivateFamily");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isPrivateFamily;
   function isScalable (family_P : str; style_P : str := "") return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "isScalable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict := Dict_New;
      if style_P /= "" then
         Dict_SetItemString (Dict, "style", Unicode_FromString (style_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isScalable;
   function isSmoothlyScalable (family_P : str; style_P : str := "") return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "isSmoothlyScalable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict := Dict_New;
      if style_P /= "" then
         Dict_SetItemString (Dict, "style", Unicode_FromString (style_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSmoothlyScalable;
   function italic (family_P : str; style_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "italic");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (style_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end italic;
   function pointSizes (family_P : str; style_P : str := "") return LIST_int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "pointSizes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict := Dict_New;
      if style_P /= "" then
         Dict_SetItemString (Dict, "style", Unicode_FromString (style_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end pointSizes;
   function removeAllApplicationFonts return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "removeAllApplicationFonts");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeAllApplicationFonts;
   function removeApplicationFont (id_P : int) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "removeApplicationFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeApplicationFont;
   function smoothSizes (family_P : str; style_P : str) return LIST_int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "smoothSizes");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (style_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end smoothSizes;
   function standardSizes return LIST_int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "standardSizes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end standardSizes;
   function styleString (font_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str) return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "styleString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end styleString;
   function styleString (fontInfo_P : UNION_QtAda6_QtGui_QFontInfo_QtAda6_QtGui_QFont) return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "styleString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fontInfo_P /= null then fontInfo_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end styleString;
   function styles (family_P : str) return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "styles");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end styles;
   function systemFont_F
     (type_K_P : access QtAda6.QtGui.QFontDatabase.SystemFont.Inst'Class) return access QtAda6.QtGui.QFont.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                            : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "systemFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end systemFont_F;
   function weight (family_P : str; style_P : str) return int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "weight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (style_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end weight;
   function writingSystemName (writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class) return str
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "writingSystemName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if writingSystem_P /= null then writingSystem_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end writingSystemName;
   function writingSystemSample
     (writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class) return str
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "writingSystemSample");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if writingSystem_P /= null then writingSystem_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end writingSystemSample;
   function writingSystems return LIST_QtAda6_QtGui_QFontDatabase_WritingSystem is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "writingSystems");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end writingSystems;
   function writingSystems (family_P : str) return LIST_QtAda6_QtGui_QFontDatabase_WritingSystem is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      Method := Object_GetAttrString (Class, "writingSystems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end writingSystems;
end QtAda6.QtGui.QFontDatabase;
