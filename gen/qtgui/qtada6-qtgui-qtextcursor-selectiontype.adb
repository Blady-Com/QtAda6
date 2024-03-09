-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextcursor-selectiontype.adb
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
package body QtAda6.QtGui.QTextCursor.SelectionType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function WordUnderCursor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WordUnderCursor"));
   end WordUnderCursor;
   function LineUnderCursor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LineUnderCursor"));
   end LineUnderCursor;
   function BlockUnderCursor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockUnderCursor"));
   end BlockUnderCursor;
   function Document return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Document"));
   end Document;
end QtAda6.QtGui.QTextCursor.SelectionType;
