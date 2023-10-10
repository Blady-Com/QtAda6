-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-stylehint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QFont.StyleHint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Helvetica  : QFont.StyleHint.Class;-- 0x0
   SansSerif  : QFont.StyleHint.Class;-- 0x0
   Serif      : QFont.StyleHint.Class;-- 0x1
   Times      : QFont.StyleHint.Class;-- 0x1
   Courier    : QFont.StyleHint.Class;-- 0x2
   TypeWriter : QFont.StyleHint.Class;-- 0x2
   Decorative : QFont.StyleHint.Class;-- 0x3
   OldEnglish : QFont.StyleHint.Class;-- 0x3
   System     : QFont.StyleHint.Class;-- 0x4
   AnyStyle   : QFont.StyleHint.Class;-- 0x5
   Cursive    : QFont.StyleHint.Class;-- 0x6
   Monospace  : QFont.StyleHint.Class;-- 0x7
   Fantasy    : QFont.StyleHint.Class;-- 0x8
end QtAda6.QtGui.QFont.StyleHint;
