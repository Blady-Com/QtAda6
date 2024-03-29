-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessible-event.adb
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
package body QtAda6.QtGui.QAccessible.Event is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SoundPlayed return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SoundPlayed"));
   end SoundPlayed;
   function Alert return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Alert"));
   end Alert;
   function ForegroundChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ForegroundChanged"));
   end ForegroundChanged;
   function MenuStart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MenuStart"));
   end MenuStart;
   function MenuEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MenuEnd"));
   end MenuEnd;
   function PopupMenuStart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PopupMenuStart"));
   end PopupMenuStart;
   function PopupMenuEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PopupMenuEnd"));
   end PopupMenuEnd;
   function ContextHelpStart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ContextHelpStart"));
   end ContextHelpStart;
   function ContextHelpEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ContextHelpEnd"));
   end ContextHelpEnd;
   function DragDropStart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DragDropStart"));
   end DragDropStart;
   function DragDropEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DragDropEnd"));
   end DragDropEnd;
   function DialogStart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DialogStart"));
   end DialogStart;
   function DialogEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DialogEnd"));
   end DialogEnd;
   function ScrollingStart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ScrollingStart"));
   end ScrollingStart;
   function ScrollingEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ScrollingEnd"));
   end ScrollingEnd;
   function MenuCommand return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MenuCommand"));
   end MenuCommand;
   function ActionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ActionChanged"));
   end ActionChanged;
   function ActiveDescendantChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ActiveDescendantChanged"));
   end ActiveDescendantChanged;
   function AttributeChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AttributeChanged"));
   end AttributeChanged;
   function DocumentContentChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DocumentContentChanged"));
   end DocumentContentChanged;
   function DocumentLoadComplete return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DocumentLoadComplete"));
   end DocumentLoadComplete;
   function DocumentLoadStopped return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DocumentLoadStopped"));
   end DocumentLoadStopped;
   function DocumentReload return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DocumentReload"));
   end DocumentReload;
   function HyperlinkEndIndexChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HyperlinkEndIndexChanged"));
   end HyperlinkEndIndexChanged;
   function HyperlinkNumberOfAnchorsChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HyperlinkNumberOfAnchorsChanged"));
   end HyperlinkNumberOfAnchorsChanged;
   function HyperlinkSelectedLinkChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HyperlinkSelectedLinkChanged"));
   end HyperlinkSelectedLinkChanged;
   function HypertextLinkActivated return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HypertextLinkActivated"));
   end HypertextLinkActivated;
   function HypertextLinkSelected return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HypertextLinkSelected"));
   end HypertextLinkSelected;
   function HyperlinkStartIndexChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HyperlinkStartIndexChanged"));
   end HyperlinkStartIndexChanged;
   function HypertextChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HypertextChanged"));
   end HypertextChanged;
   function HypertextNLinksChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HypertextNLinksChanged"));
   end HypertextNLinksChanged;
   function ObjectAttributeChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectAttributeChanged"));
   end ObjectAttributeChanged;
   function PageChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PageChanged"));
   end PageChanged;
   function SectionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SectionChanged"));
   end SectionChanged;
   function TableCaptionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCaptionChanged"));
   end TableCaptionChanged;
   function TableColumnDescriptionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableColumnDescriptionChanged"));
   end TableColumnDescriptionChanged;
   function TableColumnHeaderChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableColumnHeaderChanged"));
   end TableColumnHeaderChanged;
   function TableModelChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableModelChanged"));
   end TableModelChanged;
   function TableRowDescriptionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableRowDescriptionChanged"));
   end TableRowDescriptionChanged;
   function TableRowHeaderChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableRowHeaderChanged"));
   end TableRowHeaderChanged;
   function TableSummaryChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableSummaryChanged"));
   end TableSummaryChanged;
   function TextAttributeChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextAttributeChanged"));
   end TextAttributeChanged;
   function TextCaretMoved return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextCaretMoved"));
   end TextCaretMoved;
   function TextColumnChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextColumnChanged"));
   end TextColumnChanged;
   function TextInserted return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextInserted"));
   end TextInserted;
   function TextRemoved return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextRemoved"));
   end TextRemoved;
   function TextUpdated return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextUpdated"));
   end TextUpdated;
   function TextSelectionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextSelectionChanged"));
   end TextSelectionChanged;
   function VisibleDataChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "VisibleDataChanged"));
   end VisibleDataChanged;
   function ObjectCreated return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectCreated"));
   end ObjectCreated;
   function ObjectDestroyed return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectDestroyed"));
   end ObjectDestroyed;
   function ObjectShow return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectShow"));
   end ObjectShow;
   function ObjectHide return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectHide"));
   end ObjectHide;
   function ObjectReorder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectReorder"));
   end ObjectReorder;
   function Focus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Focus"));
   end Focus;
   function Selection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Selection"));
   end Selection;
   function SelectionAdd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SelectionAdd"));
   end SelectionAdd;
   function SelectionRemove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SelectionRemove"));
   end SelectionRemove;
   function SelectionWithin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SelectionWithin"));
   end SelectionWithin;
   function StateChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StateChanged"));
   end StateChanged;
   function LocationChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LocationChanged"));
   end LocationChanged;
   function NameChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NameChanged"));
   end NameChanged;
   function DescriptionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DescriptionChanged"));
   end DescriptionChanged;
   function ValueChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ValueChanged"));
   end ValueChanged;
   function ParentChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ParentChanged"));
   end ParentChanged;
   function HelpChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HelpChanged"));
   end HelpChanged;
   function DefaultActionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DefaultActionChanged"));
   end DefaultActionChanged;
   function AcceleratorChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AcceleratorChanged"));
   end AcceleratorChanged;
   function InvalidEvent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InvalidEvent"));
   end InvalidEvent;
end QtAda6.QtGui.QAccessible.Event;
