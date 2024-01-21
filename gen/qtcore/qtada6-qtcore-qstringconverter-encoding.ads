-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstringconverter-encoding.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QStringConverter.Encoding is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Utf8 return Class;-- 0x0
   function Utf16 return Class;-- 0x1
   function Utf16LE return Class;-- 0x2
   function Utf16BE return Class;-- 0x3
   function Utf32 return Class;-- 0x4
   function Utf32LE return Class;-- 0x5
   function Utf32BE return Class;-- 0x6
   function Latin1 return Class;-- 0x7
   function LastEncoding return Class;-- 0x8
   function System return Class;-- 0x8
end QtAda6.QtCore.QStringConverter.Encoding;
