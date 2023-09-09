-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-dateformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.DateFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   TextDate      : Qt.DateFormat.Class;-- 0x0
   ISODate       : Qt.DateFormat.Class;-- 0x1
   RFC2822Date   : Qt.DateFormat.Class;-- 0x8
   ISODateWithMs : Qt.DateFormat.Class;-- 0x9
end QtAda6.QtCore.Qt.DateFormat;
