-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstringconverter-encoding.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QStringConverter.Encoding is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Utf8         : QStringConverter.Encoding.Class;-- 0x0
   Utf16        : QStringConverter.Encoding.Class;-- 0x1
   Utf16LE      : QStringConverter.Encoding.Class;-- 0x2
   Utf16BE      : QStringConverter.Encoding.Class;-- 0x3
   Utf32        : QStringConverter.Encoding.Class;-- 0x4
   Utf32LE      : QStringConverter.Encoding.Class;-- 0x5
   Utf32BE      : QStringConverter.Encoding.Class;-- 0x6
   Latin1       : QStringConverter.Encoding.Class;-- 0x7
   LastEncoding : QStringConverter.Encoding.Class;-- 0x8
   System       : QStringConverter.Encoding.Class;-- 0x8
end QtAda6.QtCore.QStringConverter.Encoding;
