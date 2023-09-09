-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstringconverter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QStringConverter.Encoding;
limited with QtAda6.QtCore.QStringConverterBase.Flag;
with QtAda6.QtCore.QStringConverterBase;
package QtAda6.QtCore.QStringConverter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QStringConverterBase.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (encoding_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class;
      f_P        : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class) return Class;
   function Create (name_P : bytes; f_P : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class) return Class;
   function hasError (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function name (self : access Inst) return bytes;
   function nameForEncoding (e_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class) return bytes;
   procedure resetState (self : access Inst);
end QtAda6.QtCore.QStringConverter;
