-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextformat-property.adb
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
package body QtAda6.QtGui.QTextFormat.Property is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ObjectIndex return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectIndex"));
   end ObjectIndex;
   function CssFloat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CssFloat"));
   end CssFloat;
   function LayoutDirection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LayoutDirection"));
   end LayoutDirection;
   function OutlinePen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutlinePen"));
   end OutlinePen;
   function BackgroundBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BackgroundBrush"));
   end BackgroundBrush;
   function ForegroundBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ForegroundBrush"));
   end ForegroundBrush;
   function BackgroundImageUrl return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BackgroundImageUrl"));
   end BackgroundImageUrl;
   function BlockAlignment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockAlignment"));
   end BlockAlignment;
   function BlockTopMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockTopMargin"));
   end BlockTopMargin;
   function BlockBottomMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockBottomMargin"));
   end BlockBottomMargin;
   function BlockLeftMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockLeftMargin"));
   end BlockLeftMargin;
   function BlockRightMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockRightMargin"));
   end BlockRightMargin;
   function TextIndent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextIndent"));
   end TextIndent;
   function TabPositions return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabPositions"));
   end TabPositions;
   function BlockIndent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockIndent"));
   end BlockIndent;
   function LineHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LineHeight"));
   end LineHeight;
   function LineHeightType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LineHeightType"));
   end LineHeightType;
   function BlockNonBreakableLines return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockNonBreakableLines"));
   end BlockNonBreakableLines;
   function BlockTrailingHorizontalRulerWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockTrailingHorizontalRulerWidth"));
   end BlockTrailingHorizontalRulerWidth;
   function HeadingLevel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HeadingLevel"));
   end HeadingLevel;
   function BlockQuoteLevel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockQuoteLevel"));
   end BlockQuoteLevel;
   function BlockCodeLanguage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockCodeLanguage"));
   end BlockCodeLanguage;
   function BlockCodeFence return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockCodeFence"));
   end BlockCodeFence;
   function BlockMarker return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BlockMarker"));
   end BlockMarker;
   function FirstFontProperty return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FirstFontProperty"));
   end FirstFontProperty;
   function FontCapitalization return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontCapitalization"));
   end FontCapitalization;
   function FontLetterSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontLetterSpacing"));
   end FontLetterSpacing;
   function FontWordSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontWordSpacing"));
   end FontWordSpacing;
   function FontStyleHint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontStyleHint"));
   end FontStyleHint;
   function FontStyleStrategy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontStyleStrategy"));
   end FontStyleStrategy;
   function FontKerning return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontKerning"));
   end FontKerning;
   function FontHintingPreference return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontHintingPreference"));
   end FontHintingPreference;
   function FontFamilies return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontFamilies"));
   end FontFamilies;
   function FontStyleName return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontStyleName"));
   end FontStyleName;
   function FontLetterSpacingType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontLetterSpacingType"));
   end FontLetterSpacingType;
   function FontStretch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontStretch"));
   end FontStretch;
   function FontFamily return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontFamily"));
   end FontFamily;
   function OldFontFamily return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OldFontFamily"));
   end OldFontFamily;
   function FontPointSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontPointSize"));
   end FontPointSize;
   function FontSizeAdjustment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontSizeAdjustment"));
   end FontSizeAdjustment;
   function FontSizeIncrement return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontSizeIncrement"));
   end FontSizeIncrement;
   function FontWeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontWeight"));
   end FontWeight;
   function FontItalic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontItalic"));
   end FontItalic;
   function FontUnderline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontUnderline"));
   end FontUnderline;
   function FontOverline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontOverline"));
   end FontOverline;
   function FontStrikeOut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontStrikeOut"));
   end FontStrikeOut;
   function FontFixedPitch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontFixedPitch"));
   end FontFixedPitch;
   function FontPixelSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontPixelSize"));
   end FontPixelSize;
   function LastFontProperty return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastFontProperty"));
   end LastFontProperty;
   function OldTextUnderlineColor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OldTextUnderlineColor"));
   end OldTextUnderlineColor;
   function TextUnderlineColor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextUnderlineColor"));
   end TextUnderlineColor;
   function TextVerticalAlignment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextVerticalAlignment"));
   end TextVerticalAlignment;
   function TextOutline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextOutline"));
   end TextOutline;
   function TextUnderlineStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextUnderlineStyle"));
   end TextUnderlineStyle;
   function TextToolTip return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextToolTip"));
   end TextToolTip;
   function TextSuperScriptBaseline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextSuperScriptBaseline"));
   end TextSuperScriptBaseline;
   function TextSubScriptBaseline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextSubScriptBaseline"));
   end TextSubScriptBaseline;
   function TextBaselineOffset return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextBaselineOffset"));
   end TextBaselineOffset;
   function IsAnchor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IsAnchor"));
   end IsAnchor;
   function AnchorHref return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnchorHref"));
   end AnchorHref;
   function AnchorName return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnchorName"));
   end AnchorName;
   function OldFontLetterSpacingType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OldFontLetterSpacingType"));
   end OldFontLetterSpacingType;
   function OldFontStretch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OldFontStretch"));
   end OldFontStretch;
   function ObjectType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ObjectType"));
   end ObjectType;
   function ListStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ListStyle"));
   end ListStyle;
   function ListIndent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ListIndent"));
   end ListIndent;
   function ListNumberPrefix return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ListNumberPrefix"));
   end ListNumberPrefix;
   function ListNumberSuffix return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ListNumberSuffix"));
   end ListNumberSuffix;
   function FrameBorder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameBorder"));
   end FrameBorder;
   function FrameMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameMargin"));
   end FrameMargin;
   function FramePadding return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FramePadding"));
   end FramePadding;
   function FrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameWidth"));
   end FrameWidth;
   function FrameHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameHeight"));
   end FrameHeight;
   function FrameTopMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameTopMargin"));
   end FrameTopMargin;
   function FrameBottomMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameBottomMargin"));
   end FrameBottomMargin;
   function FrameLeftMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameLeftMargin"));
   end FrameLeftMargin;
   function FrameRightMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameRightMargin"));
   end FrameRightMargin;
   function FrameBorderBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameBorderBrush"));
   end FrameBorderBrush;
   function FrameBorderStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrameBorderStyle"));
   end FrameBorderStyle;
   function TableColumns return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableColumns"));
   end TableColumns;
   function TableColumnWidthConstraints return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableColumnWidthConstraints"));
   end TableColumnWidthConstraints;
   function TableCellSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellSpacing"));
   end TableCellSpacing;
   function TableCellPadding return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellPadding"));
   end TableCellPadding;
   function TableHeaderRowCount return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableHeaderRowCount"));
   end TableHeaderRowCount;
   function TableBorderCollapse return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableBorderCollapse"));
   end TableBorderCollapse;
   function TableCellRowSpan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellRowSpan"));
   end TableCellRowSpan;
   function TableCellColumnSpan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellColumnSpan"));
   end TableCellColumnSpan;
   function TableCellTopPadding return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellTopPadding"));
   end TableCellTopPadding;
   function TableCellBottomPadding return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellBottomPadding"));
   end TableCellBottomPadding;
   function TableCellLeftPadding return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellLeftPadding"));
   end TableCellLeftPadding;
   function TableCellRightPadding return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellRightPadding"));
   end TableCellRightPadding;
   function TableCellTopBorder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellTopBorder"));
   end TableCellTopBorder;
   function TableCellBottomBorder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellBottomBorder"));
   end TableCellBottomBorder;
   function TableCellLeftBorder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellLeftBorder"));
   end TableCellLeftBorder;
   function TableCellRightBorder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellRightBorder"));
   end TableCellRightBorder;
   function TableCellTopBorderStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellTopBorderStyle"));
   end TableCellTopBorderStyle;
   function TableCellBottomBorderStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellBottomBorderStyle"));
   end TableCellBottomBorderStyle;
   function TableCellLeftBorderStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellLeftBorderStyle"));
   end TableCellLeftBorderStyle;
   function TableCellRightBorderStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellRightBorderStyle"));
   end TableCellRightBorderStyle;
   function TableCellTopBorderBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellTopBorderBrush"));
   end TableCellTopBorderBrush;
   function TableCellBottomBorderBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellBottomBorderBrush"));
   end TableCellBottomBorderBrush;
   function TableCellLeftBorderBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellLeftBorderBrush"));
   end TableCellLeftBorderBrush;
   function TableCellRightBorderBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellRightBorderBrush"));
   end TableCellRightBorderBrush;
   function ImageName return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ImageName"));
   end ImageName;
   function ImageTitle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ImageTitle"));
   end ImageTitle;
   function ImageAltText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ImageAltText"));
   end ImageAltText;
   function ImageWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ImageWidth"));
   end ImageWidth;
   function ImageHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ImageHeight"));
   end ImageHeight;
   function ImageQuality return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ImageQuality"));
   end ImageQuality;
   function FullWidthSelection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FullWidthSelection"));
   end FullWidthSelection;
   function PageBreakPolicy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PageBreakPolicy"));
   end PageBreakPolicy;
   function UserProperty return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UserProperty"));
   end UserProperty;
end QtAda6.QtGui.QTextFormat.Property;
