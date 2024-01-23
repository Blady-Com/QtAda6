-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qkeysequence-standardkey.adb
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
package body QtAda6.QtGui.QKeySequence.StandardKey is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function UnknownKey return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnknownKey"));
   end UnknownKey;
   function HelpContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HelpContents"));
   end HelpContents;
   function WhatsThis return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WhatsThis"));
   end WhatsThis;
   function Open return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Open"));
   end Open;
   function Close return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Close"));
   end Close;
   function Save return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Save"));
   end Save;
   function New_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "New"));
   end New_K;
   function Delete return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Delete"));
   end Delete;
   function Cut return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cut"));
   end Cut;
   function Copy return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Copy"));
   end Copy;
   function Paste return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Paste"));
   end Paste;
   function Undo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Undo"));
   end Undo;
   function Redo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Redo"));
   end Redo;
   function Back return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Back"));
   end Back;
   function Forward return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Forward"));
   end Forward;
   function Refresh return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Refresh"));
   end Refresh;
   function ZoomIn return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ZoomIn"));
   end ZoomIn;
   function ZoomOut return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ZoomOut"));
   end ZoomOut;
   function Print return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Print"));
   end Print;
   function AddTab return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AddTab"));
   end AddTab;
   function NextChild return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NextChild"));
   end NextChild;
   function PreviousChild return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreviousChild"));
   end PreviousChild;
   function Find return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Find"));
   end Find;
   function FindNext return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FindNext"));
   end FindNext;
   function FindPrevious return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FindPrevious"));
   end FindPrevious;
   function Replace return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Replace"));
   end Replace;
   function SelectAll return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectAll"));
   end SelectAll;
   function Bold return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bold"));
   end Bold;
   function Italic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Italic"));
   end Italic;
   function Underline return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Underline"));
   end Underline;
   function MoveToNextChar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToNextChar"));
   end MoveToNextChar;
   function MoveToPreviousChar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToPreviousChar"));
   end MoveToPreviousChar;
   function MoveToNextWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToNextWord"));
   end MoveToNextWord;
   function MoveToPreviousWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToPreviousWord"));
   end MoveToPreviousWord;
   function MoveToNextLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToNextLine"));
   end MoveToNextLine;
   function MoveToPreviousLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToPreviousLine"));
   end MoveToPreviousLine;
   function MoveToNextPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToNextPage"));
   end MoveToNextPage;
   function MoveToPreviousPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToPreviousPage"));
   end MoveToPreviousPage;
   function MoveToStartOfLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToStartOfLine"));
   end MoveToStartOfLine;
   function MoveToEndOfLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToEndOfLine"));
   end MoveToEndOfLine;
   function MoveToStartOfBlock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToStartOfBlock"));
   end MoveToStartOfBlock;
   function MoveToEndOfBlock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToEndOfBlock"));
   end MoveToEndOfBlock;
   function MoveToStartOfDocument return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToStartOfDocument"));
   end MoveToStartOfDocument;
   function MoveToEndOfDocument return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveToEndOfDocument"));
   end MoveToEndOfDocument;
   function SelectNextChar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectNextChar"));
   end SelectNextChar;
   function SelectPreviousChar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectPreviousChar"));
   end SelectPreviousChar;
   function SelectNextWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectNextWord"));
   end SelectNextWord;
   function SelectPreviousWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectPreviousWord"));
   end SelectPreviousWord;
   function SelectNextLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectNextLine"));
   end SelectNextLine;
   function SelectPreviousLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectPreviousLine"));
   end SelectPreviousLine;
   function SelectNextPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectNextPage"));
   end SelectNextPage;
   function SelectPreviousPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectPreviousPage"));
   end SelectPreviousPage;
   function SelectStartOfLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectStartOfLine"));
   end SelectStartOfLine;
   function SelectEndOfLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectEndOfLine"));
   end SelectEndOfLine;
   function SelectStartOfBlock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectStartOfBlock"));
   end SelectStartOfBlock;
   function SelectEndOfBlock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectEndOfBlock"));
   end SelectEndOfBlock;
   function SelectStartOfDocument return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectStartOfDocument"));
   end SelectStartOfDocument;
   function SelectEndOfDocument return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectEndOfDocument"));
   end SelectEndOfDocument;
   function DeleteStartOfWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DeleteStartOfWord"));
   end DeleteStartOfWord;
   function DeleteEndOfWord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DeleteEndOfWord"));
   end DeleteEndOfWord;
   function DeleteEndOfLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DeleteEndOfLine"));
   end DeleteEndOfLine;
   function InsertParagraphSeparator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InsertParagraphSeparator"));
   end InsertParagraphSeparator;
   function InsertLineSeparator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InsertLineSeparator"));
   end InsertLineSeparator;
   function SaveAs return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaveAs"));
   end SaveAs;
   function Preferences return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Preferences"));
   end Preferences;
   function Quit return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Quit"));
   end Quit;
   function FullScreen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FullScreen"));
   end FullScreen;
   function Deselect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Deselect"));
   end Deselect;
   function DeleteCompleteLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DeleteCompleteLine"));
   end DeleteCompleteLine;
   function Backspace return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Backspace"));
   end Backspace;
   function Cancel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardKey");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cancel"));
   end Cancel;
end QtAda6.QtGui.QKeySequence.StandardKey;
