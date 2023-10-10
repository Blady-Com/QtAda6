-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextcharformat-verticalalignment.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QTextCharFormat.VerticalAlignment is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   AlignNormal      : QTextCharFormat.VerticalAlignment.Class;-- 0x0
   AlignSuperScript : QTextCharFormat.VerticalAlignment.Class;-- 0x1
   AlignSubScript   : QTextCharFormat.VerticalAlignment.Class;-- 0x2
   AlignMiddle      : QTextCharFormat.VerticalAlignment.Class;-- 0x3
   AlignTop         : QTextCharFormat.VerticalAlignment.Class;-- 0x4
   AlignBottom      : QTextCharFormat.VerticalAlignment.Class;-- 0x5
   AlignBaseline    : QTextCharFormat.VerticalAlignment.Class;-- 0x6
end QtAda6.QtGui.QTextCharFormat.VerticalAlignment;
