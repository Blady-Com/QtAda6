-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextlistformat-style.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QTextListFormat.Style is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   ListUpperRoman     : QTextListFormat.Style.Class;-- -0x8
   ListLowerRoman     : QTextListFormat.Style.Class;-- -0x7
   ListUpperAlpha     : QTextListFormat.Style.Class;-- -0x6
   ListLowerAlpha     : QTextListFormat.Style.Class;-- -0x5
   ListDecimal        : QTextListFormat.Style.Class;-- -0x4
   ListSquare         : QTextListFormat.Style.Class;-- -0x3
   ListCircle         : QTextListFormat.Style.Class;-- -0x2
   ListDisc           : QTextListFormat.Style.Class;-- -0x1
   ListStyleUndefined : QTextListFormat.Style.Class;-- 0x0
end QtAda6.QtGui.QTextListFormat.Style;
