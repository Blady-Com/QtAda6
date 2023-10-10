-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextformat-property.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.IntEnum;
package QtAda6.QtGui.QTextFormat.Property is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.IntEnum.Inst with null record;
procedure Finalize (Self : in out Class);
ObjectIndex:QTextFormat.Property.Class;-- 0x0
CssFloat:QTextFormat.Property.Class;-- 0x800
LayoutDirection:QTextFormat.Property.Class;-- 0x801
OutlinePen:QTextFormat.Property.Class;-- 0x810
BackgroundBrush:QTextFormat.Property.Class;-- 0x820
ForegroundBrush:QTextFormat.Property.Class;-- 0x821
BackgroundImageUrl:QTextFormat.Property.Class;-- 0x823
BlockAlignment:QTextFormat.Property.Class;-- 0x1010
BlockTopMargin:QTextFormat.Property.Class;-- 0x1030
BlockBottomMargin:QTextFormat.Property.Class;-- 0x1031
BlockLeftMargin:QTextFormat.Property.Class;-- 0x1032
BlockRightMargin:QTextFormat.Property.Class;-- 0x1033
TextIndent:QTextFormat.Property.Class;-- 0x1034
TabPositions:QTextFormat.Property.Class;-- 0x1035
BlockIndent:QTextFormat.Property.Class;-- 0x1040
LineHeight:QTextFormat.Property.Class;-- 0x1048
LineHeightType:QTextFormat.Property.Class;-- 0x1049
BlockNonBreakableLines:QTextFormat.Property.Class;-- 0x1050
BlockTrailingHorizontalRulerWidth:QTextFormat.Property.Class;-- 0x1060
HeadingLevel:QTextFormat.Property.Class;-- 0x1070
BlockQuoteLevel:QTextFormat.Property.Class;-- 0x1080
BlockCodeLanguage:QTextFormat.Property.Class;-- 0x1090
BlockCodeFence:QTextFormat.Property.Class;-- 0x1091
BlockMarker:QTextFormat.Property.Class;-- 0x10a0
FirstFontProperty:QTextFormat.Property.Class;-- 0x1fe0
FontCapitalization:QTextFormat.Property.Class;-- 0x1fe0
FontLetterSpacing:QTextFormat.Property.Class;-- 0x1fe1
FontWordSpacing:QTextFormat.Property.Class;-- 0x1fe2
FontStyleHint:QTextFormat.Property.Class;-- 0x1fe3
FontStyleStrategy:QTextFormat.Property.Class;-- 0x1fe4
FontKerning:QTextFormat.Property.Class;-- 0x1fe5
FontHintingPreference:QTextFormat.Property.Class;-- 0x1fe6
FontFamilies:QTextFormat.Property.Class;-- 0x1fe7
FontStyleName:QTextFormat.Property.Class;-- 0x1fe8
FontLetterSpacingType:QTextFormat.Property.Class;-- 0x1fe9
FontStretch:QTextFormat.Property.Class;-- 0x1fea
FontFamily:QTextFormat.Property.Class;-- 0x2000
OldFontFamily:QTextFormat.Property.Class;-- 0x2000
FontPointSize:QTextFormat.Property.Class;-- 0x2001
FontSizeAdjustment:QTextFormat.Property.Class;-- 0x2002
FontSizeIncrement:QTextFormat.Property.Class;-- 0x2002
FontWeight:QTextFormat.Property.Class;-- 0x2003
FontItalic:QTextFormat.Property.Class;-- 0x2004
FontUnderline:QTextFormat.Property.Class;-- 0x2005
FontOverline:QTextFormat.Property.Class;-- 0x2006
FontStrikeOut:QTextFormat.Property.Class;-- 0x2007
FontFixedPitch:QTextFormat.Property.Class;-- 0x2008
FontPixelSize:QTextFormat.Property.Class;-- 0x2009
LastFontProperty:QTextFormat.Property.Class;-- 0x2009
OldTextUnderlineColor:QTextFormat.Property.Class;-- 0x2010
TextUnderlineColor:QTextFormat.Property.Class;-- 0x2020
TextVerticalAlignment:QTextFormat.Property.Class;-- 0x2021
TextOutline:QTextFormat.Property.Class;-- 0x2022
TextUnderlineStyle:QTextFormat.Property.Class;-- 0x2023
TextToolTip:QTextFormat.Property.Class;-- 0x2024
TextSuperScriptBaseline:QTextFormat.Property.Class;-- 0x2025
TextSubScriptBaseline:QTextFormat.Property.Class;-- 0x2026
TextBaselineOffset:QTextFormat.Property.Class;-- 0x2027
IsAnchor:QTextFormat.Property.Class;-- 0x2030
AnchorHref:QTextFormat.Property.Class;-- 0x2031
AnchorName:QTextFormat.Property.Class;-- 0x2032
OldFontLetterSpacingType:QTextFormat.Property.Class;-- 0x2033
OldFontStretch:QTextFormat.Property.Class;-- 0x2034
ObjectType:QTextFormat.Property.Class;-- 0x2f00
ListStyle:QTextFormat.Property.Class;-- 0x3000
ListIndent:QTextFormat.Property.Class;-- 0x3001
ListNumberPrefix:QTextFormat.Property.Class;-- 0x3002
ListNumberSuffix:QTextFormat.Property.Class;-- 0x3003
FrameBorder:QTextFormat.Property.Class;-- 0x4000
FrameMargin:QTextFormat.Property.Class;-- 0x4001
FramePadding:QTextFormat.Property.Class;-- 0x4002
FrameWidth:QTextFormat.Property.Class;-- 0x4003
FrameHeight:QTextFormat.Property.Class;-- 0x4004
FrameTopMargin:QTextFormat.Property.Class;-- 0x4005
FrameBottomMargin:QTextFormat.Property.Class;-- 0x4006
FrameLeftMargin:QTextFormat.Property.Class;-- 0x4007
FrameRightMargin:QTextFormat.Property.Class;-- 0x4008
FrameBorderBrush:QTextFormat.Property.Class;-- 0x4009
FrameBorderStyle:QTextFormat.Property.Class;-- 0x4010
TableColumns:QTextFormat.Property.Class;-- 0x4100
TableColumnWidthConstraints:QTextFormat.Property.Class;-- 0x4101
TableCellSpacing:QTextFormat.Property.Class;-- 0x4102
TableCellPadding:QTextFormat.Property.Class;-- 0x4103
TableHeaderRowCount:QTextFormat.Property.Class;-- 0x4104
TableBorderCollapse:QTextFormat.Property.Class;-- 0x4105
TableCellRowSpan:QTextFormat.Property.Class;-- 0x4810
TableCellColumnSpan:QTextFormat.Property.Class;-- 0x4811
TableCellTopPadding:QTextFormat.Property.Class;-- 0x4812
TableCellBottomPadding:QTextFormat.Property.Class;-- 0x4813
TableCellLeftPadding:QTextFormat.Property.Class;-- 0x4814
TableCellRightPadding:QTextFormat.Property.Class;-- 0x4815
TableCellTopBorder:QTextFormat.Property.Class;-- 0x4816
TableCellBottomBorder:QTextFormat.Property.Class;-- 0x4817
TableCellLeftBorder:QTextFormat.Property.Class;-- 0x4818
TableCellRightBorder:QTextFormat.Property.Class;-- 0x4819
TableCellTopBorderStyle:QTextFormat.Property.Class;-- 0x481a
TableCellBottomBorderStyle:QTextFormat.Property.Class;-- 0x481b
TableCellLeftBorderStyle:QTextFormat.Property.Class;-- 0x481c
TableCellRightBorderStyle:QTextFormat.Property.Class;-- 0x481d
TableCellTopBorderBrush:QTextFormat.Property.Class;-- 0x481e
TableCellBottomBorderBrush:QTextFormat.Property.Class;-- 0x481f
TableCellLeftBorderBrush:QTextFormat.Property.Class;-- 0x4820
TableCellRightBorderBrush:QTextFormat.Property.Class;-- 0x4821
ImageName:QTextFormat.Property.Class;-- 0x5000
ImageTitle:QTextFormat.Property.Class;-- 0x5001
ImageAltText:QTextFormat.Property.Class;-- 0x5002
ImageWidth:QTextFormat.Property.Class;-- 0x5010
ImageHeight:QTextFormat.Property.Class;-- 0x5011
ImageQuality:QTextFormat.Property.Class;-- 0x5014
FullWidthSelection:QTextFormat.Property.Class;-- 0x6000
PageBreakPolicy:QTextFormat.Property.Class;-- 0x7000
UserProperty:QTextFormat.Property.Class;-- 0x100000
end QtAda6.QtGui.QTextFormat.Property;
