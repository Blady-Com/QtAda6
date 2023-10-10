-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextobjectinterface.adb
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
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtCore.QSizeF;
package body QtAda6.QtGui.QTextObjectInterface is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextObjectInterface");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure drawObject
     (self            : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class;
      posInDocument_P : int; format_P : access QtAda6.QtGui.QTextFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawObject");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, doc_P.Python_Proxy);
      Tuple_SetItem (Args, 3, Long_FromLong (posInDocument_P));
      Tuple_SetItem (Args, 4, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end drawObject;
   function intrinsicSize
     (self     : access Inst; doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class; posInDocument_P : int;
      format_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intrinsicSize");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, doc_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (posInDocument_P));
      Tuple_SetItem (Args, 2, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end intrinsicSize;
end QtAda6.QtGui.QTextObjectInterface;
