-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-event.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAccessible.Event is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function SoundPlayed return Class;-- 0x1
   function Alert return Class;-- 0x2
   function ForegroundChanged return Class;-- 0x3
   function MenuStart return Class;-- 0x4
   function MenuEnd return Class;-- 0x5
   function PopupMenuStart return Class;-- 0x6
   function PopupMenuEnd return Class;-- 0x7
   function ContextHelpStart return Class;-- 0xc
   function ContextHelpEnd return Class;-- 0xd
   function DragDropStart return Class;-- 0xe
   function DragDropEnd return Class;-- 0xf
   function DialogStart return Class;-- 0x10
   function DialogEnd return Class;-- 0x11
   function ScrollingStart return Class;-- 0x12
   function ScrollingEnd return Class;-- 0x13
   function MenuCommand return Class;-- 0x18
   function ActionChanged return Class;-- 0x101
   function ActiveDescendantChanged return Class;-- 0x102
   function AttributeChanged return Class;-- 0x103
   function DocumentContentChanged return Class;-- 0x104
   function DocumentLoadComplete return Class;-- 0x105
   function DocumentLoadStopped return Class;-- 0x106
   function DocumentReload return Class;-- 0x107
   function HyperlinkEndIndexChanged return Class;-- 0x108
   function HyperlinkNumberOfAnchorsChanged return Class;-- 0x109
   function HyperlinkSelectedLinkChanged return Class;-- 0x10a
   function HypertextLinkActivated return Class;-- 0x10b
   function HypertextLinkSelected return Class;-- 0x10c
   function HyperlinkStartIndexChanged return Class;-- 0x10d
   function HypertextChanged return Class;-- 0x10e
   function HypertextNLinksChanged return Class;-- 0x10f
   function ObjectAttributeChanged return Class;-- 0x110
   function PageChanged return Class;-- 0x111
   function SectionChanged return Class;-- 0x112
   function TableCaptionChanged return Class;-- 0x113
   function TableColumnDescriptionChanged return Class;-- 0x114
   function TableColumnHeaderChanged return Class;-- 0x115
   function TableModelChanged return Class;-- 0x116
   function TableRowDescriptionChanged return Class;-- 0x117
   function TableRowHeaderChanged return Class;-- 0x118
   function TableSummaryChanged return Class;-- 0x119
   function TextAttributeChanged return Class;-- 0x11a
   function TextCaretMoved return Class;-- 0x11b
   function TextColumnChanged return Class;-- 0x11d
   function TextInserted return Class;-- 0x11e
   function TextRemoved return Class;-- 0x11f
   function TextUpdated return Class;-- 0x120
   function TextSelectionChanged return Class;-- 0x121
   function VisibleDataChanged return Class;-- 0x122
   function ObjectCreated return Class;-- 0x8000
   function ObjectDestroyed return Class;-- 0x8001
   function ObjectShow return Class;-- 0x8002
   function ObjectHide return Class;-- 0x8003
   function ObjectReorder return Class;-- 0x8004
   function Focus return Class;-- 0x8005
   function Selection return Class;-- 0x8006
   function SelectionAdd return Class;-- 0x8007
   function SelectionRemove return Class;-- 0x8008
   function SelectionWithin return Class;-- 0x8009
   function StateChanged return Class;-- 0x800a
   function LocationChanged return Class;-- 0x800b
   function NameChanged return Class;-- 0x800c
   function DescriptionChanged return Class;-- 0x800d
   function ValueChanged return Class;-- 0x800e
   function ParentChanged return Class;-- 0x800f
   function HelpChanged return Class;-- 0x80a0
   function DefaultActionChanged return Class;-- 0x80b0
   function AcceleratorChanged return Class;-- 0x80c0
   function InvalidEvent return Class;-- 0x80c1
end QtAda6.QtGui.QAccessible.Event;
