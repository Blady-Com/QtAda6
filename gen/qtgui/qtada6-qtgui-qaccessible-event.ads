-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-event.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QAccessible.Event is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   SoundPlayed                     : QAccessible.Event.Class;-- 0x1
   Alert                           : QAccessible.Event.Class;-- 0x2
   ForegroundChanged               : QAccessible.Event.Class;-- 0x3
   MenuStart                       : QAccessible.Event.Class;-- 0x4
   MenuEnd                         : QAccessible.Event.Class;-- 0x5
   PopupMenuStart                  : QAccessible.Event.Class;-- 0x6
   PopupMenuEnd                    : QAccessible.Event.Class;-- 0x7
   ContextHelpStart                : QAccessible.Event.Class;-- 0xc
   ContextHelpEnd                  : QAccessible.Event.Class;-- 0xd
   DragDropStart                   : QAccessible.Event.Class;-- 0xe
   DragDropEnd                     : QAccessible.Event.Class;-- 0xf
   DialogStart                     : QAccessible.Event.Class;-- 0x10
   DialogEnd                       : QAccessible.Event.Class;-- 0x11
   ScrollingStart                  : QAccessible.Event.Class;-- 0x12
   ScrollingEnd                    : QAccessible.Event.Class;-- 0x13
   MenuCommand                     : QAccessible.Event.Class;-- 0x18
   ActionChanged                   : QAccessible.Event.Class;-- 0x101
   ActiveDescendantChanged         : QAccessible.Event.Class;-- 0x102
   AttributeChanged                : QAccessible.Event.Class;-- 0x103
   DocumentContentChanged          : QAccessible.Event.Class;-- 0x104
   DocumentLoadComplete            : QAccessible.Event.Class;-- 0x105
   DocumentLoadStopped             : QAccessible.Event.Class;-- 0x106
   DocumentReload                  : QAccessible.Event.Class;-- 0x107
   HyperlinkEndIndexChanged        : QAccessible.Event.Class;-- 0x108
   HyperlinkNumberOfAnchorsChanged : QAccessible.Event.Class;-- 0x109
   HyperlinkSelectedLinkChanged    : QAccessible.Event.Class;-- 0x10a
   HypertextLinkActivated          : QAccessible.Event.Class;-- 0x10b
   HypertextLinkSelected           : QAccessible.Event.Class;-- 0x10c
   HyperlinkStartIndexChanged      : QAccessible.Event.Class;-- 0x10d
   HypertextChanged                : QAccessible.Event.Class;-- 0x10e
   HypertextNLinksChanged          : QAccessible.Event.Class;-- 0x10f
   ObjectAttributeChanged          : QAccessible.Event.Class;-- 0x110
   PageChanged                     : QAccessible.Event.Class;-- 0x111
   SectionChanged                  : QAccessible.Event.Class;-- 0x112
   TableCaptionChanged             : QAccessible.Event.Class;-- 0x113
   TableColumnDescriptionChanged   : QAccessible.Event.Class;-- 0x114
   TableColumnHeaderChanged        : QAccessible.Event.Class;-- 0x115
   TableModelChanged               : QAccessible.Event.Class;-- 0x116
   TableRowDescriptionChanged      : QAccessible.Event.Class;-- 0x117
   TableRowHeaderChanged           : QAccessible.Event.Class;-- 0x118
   TableSummaryChanged             : QAccessible.Event.Class;-- 0x119
   TextAttributeChanged            : QAccessible.Event.Class;-- 0x11a
   TextCaretMoved                  : QAccessible.Event.Class;-- 0x11b
   TextColumnChanged               : QAccessible.Event.Class;-- 0x11d
   TextInserted                    : QAccessible.Event.Class;-- 0x11e
   TextRemoved                     : QAccessible.Event.Class;-- 0x11f
   TextUpdated                     : QAccessible.Event.Class;-- 0x120
   TextSelectionChanged            : QAccessible.Event.Class;-- 0x121
   VisibleDataChanged              : QAccessible.Event.Class;-- 0x122
   ObjectCreated                   : QAccessible.Event.Class;-- 0x8000
   ObjectDestroyed                 : QAccessible.Event.Class;-- 0x8001
   ObjectShow                      : QAccessible.Event.Class;-- 0x8002
   ObjectHide                      : QAccessible.Event.Class;-- 0x8003
   ObjectReorder                   : QAccessible.Event.Class;-- 0x8004
   Focus                           : QAccessible.Event.Class;-- 0x8005
   Selection                       : QAccessible.Event.Class;-- 0x8006
   SelectionAdd                    : QAccessible.Event.Class;-- 0x8007
   SelectionRemove                 : QAccessible.Event.Class;-- 0x8008
   SelectionWithin                 : QAccessible.Event.Class;-- 0x8009
   StateChanged                    : QAccessible.Event.Class;-- 0x800a
   LocationChanged                 : QAccessible.Event.Class;-- 0x800b
   NameChanged                     : QAccessible.Event.Class;-- 0x800c
   DescriptionChanged              : QAccessible.Event.Class;-- 0x800d
   ValueChanged                    : QAccessible.Event.Class;-- 0x800e
   ParentChanged                   : QAccessible.Event.Class;-- 0x800f
   HelpChanged                     : QAccessible.Event.Class;-- 0x80a0
   DefaultActionChanged            : QAccessible.Event.Class;-- 0x80b0
   AcceleratorChanged              : QAccessible.Event.Class;-- 0x80c0
   InvalidEvent                    : QAccessible.Event.Class;-- 0x80c1
end QtAda6.QtGui.QAccessible.Event;
