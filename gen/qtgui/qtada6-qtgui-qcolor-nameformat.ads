-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qcolor-nameformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QColor.NameFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   HexRgb  : QColor.NameFormat.Class;-- 0x0
   HexArgb : QColor.NameFormat.Class;-- 0x1
end QtAda6.QtGui.QColor.NameFormat;
