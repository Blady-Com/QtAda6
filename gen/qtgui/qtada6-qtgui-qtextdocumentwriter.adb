-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextdocumentwriter.adb
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
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextDocumentFragment;
package body QtAda6.QtGui.QTextDocumentWriter is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentWriter");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : UNION_QtAda6_QtCore_QByteArray_bytes)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentWriter");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (fileName_P : str; format_P : UNION_QtAda6_QtCore_QByteArray_bytes := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentWriter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QIODevice.Class := new QtAda6.QtCore.QIODevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "device");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end device;
   function fileName (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fileName;
   function format (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "format");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevice");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDevice;
   procedure setFileName (self : access Inst; fileName_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFileName;
   procedure setFormat (self : access Inst; format_P : UNION_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFormat;
   function supportedDocumentFormats return LIST_QtAda6_QtCore_QByteArray is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocumentWriter");
      Method := Object_GetAttrString (Class, "supportedDocumentFormats");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end supportedDocumentFormats;
   function write (self : access Inst; document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "write");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if document_P /= null then document_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end write;
   function write (self : access Inst; fragment_P : access QtAda6.QtGui.QTextDocumentFragment.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "write");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fragment_P /= null then fragment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end write;
end QtAda6.QtGui.QTextDocumentWriter;
