-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextframe.adb
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
with QtAda6.QtGui.QTextObject;
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextFrame.iterator;
with QtAda6.QtGui.QTextCursor;
with QtAda6.QtGui.QTextFrameFormat;
package body QtAda6.QtGui.QTextFrame is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrame");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, doc_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_iter_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iter__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_iter_U;
   function begin_K (self : access Inst) return access QtAda6.QtGui.QTextFrame.iterator.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFrame.iterator.Class := new QtAda6.QtGui.QTextFrame.iterator.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "begin");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end begin_K;
   function childFrames (self : access Inst) return List_QtAda6_QtGui_QTextFrame is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childFrames");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end childFrames;
   function end_K (self : access Inst) return access QtAda6.QtGui.QTextFrame.iterator.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFrame.iterator.Class := new QtAda6.QtGui.QTextFrame.iterator.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "end");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end end_K;
   function firstCursorPosition (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCursor.Class := new QtAda6.QtGui.QTextCursor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "firstCursorPosition");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end firstCursorPosition;
   function firstPosition (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "firstPosition");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end firstPosition;
   function frameFormat (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFrameFormat.Class := new QtAda6.QtGui.QTextFrameFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "frameFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end frameFormat;
   function lastCursorPosition (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCursor.Class := new QtAda6.QtGui.QTextCursor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "lastCursorPosition");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lastCursorPosition;
   function lastPosition (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastPosition");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lastPosition;
   function parentFrame (self : access Inst) return access QtAda6.QtGui.QTextFrame.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFrame.Class := new QtAda6.QtGui.QTextFrame.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parentFrame");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parentFrame;
   procedure setFrameFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextFrameFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFrameFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFrameFormat;
end QtAda6.QtGui.QTextFrame;
