-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextformat-property.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QTextFormat.Property is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function ObjectIndex return Class;-- 0x0
   function CssFloat return Class;-- 0x800
   function LayoutDirection return Class;-- 0x801
   function OutlinePen return Class;-- 0x810
   function BackgroundBrush return Class;-- 0x820
   function ForegroundBrush return Class;-- 0x821
   function BackgroundImageUrl return Class;-- 0x823
   function BlockAlignment return Class;-- 0x1010
   function BlockTopMargin return Class;-- 0x1030
   function BlockBottomMargin return Class;-- 0x1031
   function BlockLeftMargin return Class;-- 0x1032
   function BlockRightMargin return Class;-- 0x1033
   function TextIndent return Class;-- 0x1034
   function TabPositions return Class;-- 0x1035
   function BlockIndent return Class;-- 0x1040
   function LineHeight return Class;-- 0x1048
   function LineHeightType return Class;-- 0x1049
   function BlockNonBreakableLines return Class;-- 0x1050
   function BlockTrailingHorizontalRulerWidth return Class;-- 0x1060
   function HeadingLevel return Class;-- 0x1070
   function BlockQuoteLevel return Class;-- 0x1080
   function BlockCodeLanguage return Class;-- 0x1090
   function BlockCodeFence return Class;-- 0x1091
   function BlockMarker return Class;-- 0x10a0
   function FirstFontProperty return Class;-- 0x1fe0
   function FontCapitalization return Class;-- 0x1fe0
   function FontLetterSpacing return Class;-- 0x1fe1
   function FontWordSpacing return Class;-- 0x1fe2
   function FontStyleHint return Class;-- 0x1fe3
   function FontStyleStrategy return Class;-- 0x1fe4
   function FontKerning return Class;-- 0x1fe5
   function FontHintingPreference return Class;-- 0x1fe6
   function FontFamilies return Class;-- 0x1fe7
   function FontStyleName return Class;-- 0x1fe8
   function FontLetterSpacingType return Class;-- 0x1fe9
   function FontStretch return Class;-- 0x1fea
   function FontFamily return Class;-- 0x2000
   function OldFontFamily return Class;-- 0x2000
   function FontPointSize return Class;-- 0x2001
   function FontSizeAdjustment return Class;-- 0x2002
   function FontSizeIncrement return Class;-- 0x2002
   function FontWeight return Class;-- 0x2003
   function FontItalic return Class;-- 0x2004
   function FontUnderline return Class;-- 0x2005
   function FontOverline return Class;-- 0x2006
   function FontStrikeOut return Class;-- 0x2007
   function FontFixedPitch return Class;-- 0x2008
   function FontPixelSize return Class;-- 0x2009
   function LastFontProperty return Class;-- 0x2009
   function OldTextUnderlineColor return Class;-- 0x2010
   function TextUnderlineColor return Class;-- 0x2020
   function TextVerticalAlignment return Class;-- 0x2021
   function TextOutline return Class;-- 0x2022
   function TextUnderlineStyle return Class;-- 0x2023
   function TextToolTip return Class;-- 0x2024
   function TextSuperScriptBaseline return Class;-- 0x2025
   function TextSubScriptBaseline return Class;-- 0x2026
   function TextBaselineOffset return Class;-- 0x2027
   function IsAnchor return Class;-- 0x2030
   function AnchorHref return Class;-- 0x2031
   function AnchorName return Class;-- 0x2032
   function OldFontLetterSpacingType return Class;-- 0x2033
   function OldFontStretch return Class;-- 0x2034
   function ObjectType return Class;-- 0x2f00
   function ListStyle return Class;-- 0x3000
   function ListIndent return Class;-- 0x3001
   function ListNumberPrefix return Class;-- 0x3002
   function ListNumberSuffix return Class;-- 0x3003
   function FrameBorder return Class;-- 0x4000
   function FrameMargin return Class;-- 0x4001
   function FramePadding return Class;-- 0x4002
   function FrameWidth return Class;-- 0x4003
   function FrameHeight return Class;-- 0x4004
   function FrameTopMargin return Class;-- 0x4005
   function FrameBottomMargin return Class;-- 0x4006
   function FrameLeftMargin return Class;-- 0x4007
   function FrameRightMargin return Class;-- 0x4008
   function FrameBorderBrush return Class;-- 0x4009
   function FrameBorderStyle return Class;-- 0x4010
   function TableColumns return Class;-- 0x4100
   function TableColumnWidthConstraints return Class;-- 0x4101
   function TableCellSpacing return Class;-- 0x4102
   function TableCellPadding return Class;-- 0x4103
   function TableHeaderRowCount return Class;-- 0x4104
   function TableBorderCollapse return Class;-- 0x4105
   function TableCellRowSpan return Class;-- 0x4810
   function TableCellColumnSpan return Class;-- 0x4811
   function TableCellTopPadding return Class;-- 0x4812
   function TableCellBottomPadding return Class;-- 0x4813
   function TableCellLeftPadding return Class;-- 0x4814
   function TableCellRightPadding return Class;-- 0x4815
   function TableCellTopBorder return Class;-- 0x4816
   function TableCellBottomBorder return Class;-- 0x4817
   function TableCellLeftBorder return Class;-- 0x4818
   function TableCellRightBorder return Class;-- 0x4819
   function TableCellTopBorderStyle return Class;-- 0x481a
   function TableCellBottomBorderStyle return Class;-- 0x481b
   function TableCellLeftBorderStyle return Class;-- 0x481c
   function TableCellRightBorderStyle return Class;-- 0x481d
   function TableCellTopBorderBrush return Class;-- 0x481e
   function TableCellBottomBorderBrush return Class;-- 0x481f
   function TableCellLeftBorderBrush return Class;-- 0x4820
   function TableCellRightBorderBrush return Class;-- 0x4821
   function ImageName return Class;-- 0x5000
   function ImageTitle return Class;-- 0x5001
   function ImageAltText return Class;-- 0x5002
   function ImageWidth return Class;-- 0x5010
   function ImageHeight return Class;-- 0x5011
   function ImageQuality return Class;-- 0x5014
   function FullWidthSelection return Class;-- 0x6000
   function PageBreakPolicy return Class;-- 0x7000
   function UserProperty return Class;-- 0x100000
end QtAda6.QtGui.QTextFormat.Property;
