-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextblockgroup.adb
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
with QtAda6.QtGui.QTextBlock;
package body QtAda6.QtGui.QTextBlockGroup is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextBlockGroup");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, doc_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure blockFormatChanged (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockFormatChanged");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, block_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end blockFormatChanged;
   procedure blockInserted (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockInserted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, block_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end blockInserted;
   function blockList (self : access Inst) return List_QtAda6_QtGui_QTextBlock is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end blockList;
   procedure blockRemoved (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockRemoved");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, block_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end blockRemoved;
end QtAda6.QtGui.QTextBlockGroup;
