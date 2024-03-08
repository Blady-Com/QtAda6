-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstringdecoder.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QStringConverter.Encoding;
limited with QtAda6.QtCore.QStringConverterBase.Flag;
with QtAda6.QtCore.QStringConverter;
package QtAda6.QtCore.QStringDecoder is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QStringConverter.Inst with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (encoding_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class;
      flags_P    : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class := null) return Class;
   function Create
     (name_P : bytes; f_P : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class := null) return Class;
   function appendToBuffer
     (self : access Inst; out_K_P : bytes; ba_P : UNION_QtAda6_QtCore_QByteArray_bytes) return bytes;
   function decoderForHtml
     (data_P : UNION_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QStringDecoder.Inst'Class;
   function requiredSpace (self : access Inst; inputLength_P : int) return int;
end QtAda6.QtCore.QStringDecoder;
