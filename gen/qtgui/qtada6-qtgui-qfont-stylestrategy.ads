-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-stylestrategy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QFont.StyleStrategy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   PreferDefault       : QFont.StyleStrategy.Class;-- 0x1
   PreferBitmap        : QFont.StyleStrategy.Class;-- 0x2
   PreferDevice        : QFont.StyleStrategy.Class;-- 0x4
   PreferOutline       : QFont.StyleStrategy.Class;-- 0x8
   ForceOutline        : QFont.StyleStrategy.Class;-- 0x10
   PreferMatch         : QFont.StyleStrategy.Class;-- 0x20
   PreferQuality       : QFont.StyleStrategy.Class;-- 0x40
   PreferAntialias     : QFont.StyleStrategy.Class;-- 0x80
   NoAntialias         : QFont.StyleStrategy.Class;-- 0x100
   NoSubpixelAntialias : QFont.StyleStrategy.Class;-- 0x800
   PreferNoShaping     : QFont.StyleStrategy.Class;-- 0x1000
   NoFontMerging       : QFont.StyleStrategy.Class;-- 0x8000
end QtAda6.QtGui.QFont.StyleStrategy;
