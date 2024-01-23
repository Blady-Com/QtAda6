-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessible-role.adb
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
package body QtAda6.QtGui.QAccessible.Role is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoRole"));
   end NoRole;
   function TitleBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TitleBar"));
   end TitleBar;
   function MenuBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MenuBar"));
   end MenuBar;
   function ScrollBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ScrollBar"));
   end ScrollBar;
   function Grip return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Grip"));
   end Grip;
   function Sound return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Sound"));
   end Sound;
   function Cursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cursor"));
   end Cursor;
   function Caret return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Caret"));
   end Caret;
   function AlertMessage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlertMessage"));
   end AlertMessage;
   function Window return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Window"));
   end Window;
   function Client return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Client"));
   end Client;
   function PopupMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PopupMenu"));
   end PopupMenu;
   function MenuItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MenuItem"));
   end MenuItem;
   function ToolTip return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ToolTip"));
   end ToolTip;
   function Application return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Application"));
   end Application;
   function Document return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Document"));
   end Document;
   function Pane return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Pane"));
   end Pane;
   function Chart return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Chart"));
   end Chart;
   function Dialog return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Dialog"));
   end Dialog;
   function Border return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Border"));
   end Border;
   function Grouping return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Grouping"));
   end Grouping;
   function Separator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Separator"));
   end Separator;
   function ToolBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ToolBar"));
   end ToolBar;
   function StatusBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StatusBar"));
   end StatusBar;
   function Table return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Table"));
   end Table;
   function ColumnHeader return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ColumnHeader"));
   end ColumnHeader;
   function RowHeader return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RowHeader"));
   end RowHeader;
   function Column return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Column"));
   end Column;
   function Row return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Row"));
   end Row;
   function Cell return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cell"));
   end Cell;
   function Link return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Link"));
   end Link;
   function HelpBalloon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HelpBalloon"));
   end HelpBalloon;
   function Assistant return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Assistant"));
   end Assistant;
   function List return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "List"));
   end List;
   function ListItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListItem"));
   end ListItem;
   function Tree return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Tree"));
   end Tree;
   function TreeItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TreeItem"));
   end TreeItem;
   function PageTab return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PageTab"));
   end PageTab;
   function PropertyPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PropertyPage"));
   end PropertyPage;
   function Indicator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Indicator"));
   end Indicator;
   function Graphic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Graphic"));
   end Graphic;
   function StaticText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StaticText"));
   end StaticText;
   function EditableText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EditableText"));
   end EditableText;
   function Button return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Button"));
   end Button;
   function PushButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PushButton"));
   end PushButton;
   function CheckBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CheckBox"));
   end CheckBox;
   function RadioButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RadioButton"));
   end RadioButton;
   function ComboBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ComboBox"));
   end ComboBox;
   function ProgressBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ProgressBar"));
   end ProgressBar;
   function Dial return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Dial"));
   end Dial;
   function HotkeyField return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HotkeyField"));
   end HotkeyField;
   function Slider return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Slider"));
   end Slider;
   function SpinBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SpinBox"));
   end SpinBox;
   function Canvas return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Canvas"));
   end Canvas;
   function Animation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Animation"));
   end Animation;
   function Equation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Equation"));
   end Equation;
   function ButtonDropDown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ButtonDropDown"));
   end ButtonDropDown;
   function ButtonMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ButtonMenu"));
   end ButtonMenu;
   function ButtonDropGrid return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ButtonDropGrid"));
   end ButtonDropGrid;
   function Whitespace return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Whitespace"));
   end Whitespace;
   function PageTabList return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PageTabList"));
   end PageTabList;
   function Clock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Clock"));
   end Clock;
   function Splitter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Splitter"));
   end Splitter;
   function LayeredPane return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LayeredPane"));
   end LayeredPane;
   function Terminal return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Terminal"));
   end Terminal;
   function Desktop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Desktop"));
   end Desktop;
   function Paragraph return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Paragraph"));
   end Paragraph;
   function WebDocument return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WebDocument"));
   end WebDocument;
   function Section return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Section"));
   end Section;
   function Notification return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Notification"));
   end Notification;
   function ColorChooser return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ColorChooser"));
   end ColorChooser;
   function Footer return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Footer"));
   end Footer;
   function Form return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Form"));
   end Form;
   function Heading return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Heading"));
   end Heading;
   function Note return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Note"));
   end Note;
   function ComplementaryContent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ComplementaryContent"));
   end ComplementaryContent;
   function UserRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Role");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UserRole"));
   end UserRole;
end QtAda6.QtGui.QAccessible.Role;
