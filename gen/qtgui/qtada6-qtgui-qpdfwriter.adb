-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpdfwriter.adb
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
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
with QtAda6.QtGui.QPaintEngine;
with QtAda6.QtGui.QPagedPaintDevice.PdfVersion;
package body QtAda6.QtGui.QPdfWriter is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPdfWriter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (filename_P : str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPdfWriter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filename_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addFileAttachment
     (self : access Inst; fileName_P : str; data_P : UNION_QtAda6_QtCore_QByteArray_bytes; mimeType_P : str := "")
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addFileAttachment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mimeType_P /= "" then
         Dict_SetItemString (Dict, "mimeType", Unicode_FromString (mimeType_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addFileAttachment;
   function creator (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "creator");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end creator;
   function documentXmpMetadata (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "documentXmpMetadata");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end documentXmpMetadata;
   function metric (self : access Inst; id_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "metric");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if id_P /= null then id_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end metric;
   function newPage (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "newPage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end newPage;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintEngine.Class := new QtAda6.QtGui.QPaintEngine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintEngine");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintEngine;
   function pdfVersion (self : access Inst) return access QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Class :=
        new QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pdfVersion");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pdfVersion;
   function resolution (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolution");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end resolution;
   procedure setCreator (self : access Inst; creator_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCreator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (creator_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCreator;
   procedure setDocumentXmpMetadata (self : access Inst; xmpMetadata_P : UNION_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDocumentXmpMetadata");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if xmpMetadata_P /= null then xmpMetadata_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDocumentXmpMetadata;
   procedure setPdfVersion (self : access Inst; version_P : access QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPdfVersion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if version_P /= null then version_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPdfVersion;
   procedure setResolution (self : access Inst; resolution_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setResolution");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resolution_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setResolution;
   procedure setTitle (self : access Inst; title_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTitle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (title_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTitle;
   function title (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "title");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end title;
end QtAda6.QtGui.QPdfWriter;
