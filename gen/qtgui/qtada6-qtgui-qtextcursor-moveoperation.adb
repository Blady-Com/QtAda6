-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextcursor-moveoperation.adb
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
package body QtAda6.QtGui.QTextCursor.MoveOperation is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoMove return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoMove"));
   end NoMove;
   function Start return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Start"));
   end Start;
   function Up return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Up"));
   end Up;
   function StartOfLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StartOfLine"));
   end StartOfLine;
   function StartOfBlock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StartOfBlock"));
   end StartOfBlock;
   function StartOfWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StartOfWord"));
   end StartOfWord;
   function PreviousBlock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreviousBlock"));
   end PreviousBlock;
   function PreviousCharacter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreviousCharacter"));
   end PreviousCharacter;
   function PreviousWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreviousWord"));
   end PreviousWord;
   function Left return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Left"));
   end Left;
   function WordLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WordLeft"));
   end WordLeft;
   function End_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "End"));
   end End_K;
   function Down return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Down"));
   end Down;
   function EndOfLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EndOfLine"));
   end EndOfLine;
   function EndOfWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EndOfWord"));
   end EndOfWord;
   function EndOfBlock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EndOfBlock"));
   end EndOfBlock;
   function NextBlock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NextBlock"));
   end NextBlock;
   function NextCharacter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NextCharacter"));
   end NextCharacter;
   function NextWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NextWord"));
   end NextWord;
   function Right return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Right"));
   end Right;
   function WordRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WordRight"));
   end WordRight;
   function NextCell return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NextCell"));
   end NextCell;
   function PreviousCell return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreviousCell"));
   end PreviousCell;
   function NextRow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NextRow"));
   end NextRow;
   function PreviousRow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCursor");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MoveOperation");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreviousRow"));
   end PreviousRow;
end QtAda6.QtGui.QTextCursor.MoveOperation;
