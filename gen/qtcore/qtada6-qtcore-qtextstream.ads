-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtextstream.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QTextStreamManipulator;
limited with QtAda6.QtCore.QStringConverter.Encoding;
limited with QtAda6.QtCore.QTextStream.FieldAlignment;
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.QTextStream.NumberFlag;
limited with QtAda6.QtCore.QTextStream.RealNumberNotation;
limited with QtAda6.QtCore.QLocale.Language;
limited with QtAda6.QtCore.QTextStream.Status;
with QtAda6.QtCore.QIODeviceBase;
package QtAda6.QtCore.QTextStream is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QIODeviceBase.Inst with null record;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   type TUPLE_boolstr is new Any;
   type UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language is new Any;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (array_K_P  : UNION_QtAda6_QtCore_QByteArraybytes;
      openMode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class := null) return Class;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class;
   function U_lshift_U
     (self : access Inst; array_K_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QTextStream.Inst'Class;
   function U_lshift_U (self : access Inst; ch_P : str) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function U_lshift_U (self : access Inst; ch_P : int) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function U_lshift_U (self : access Inst; f_P : float) return access QtAda6.QtCore.QTextStream.Inst'Class;
-- function U_lshift_U(self : access Inst;i_P : int) return access QtAda6.QtCore.QTextStream.Inst'Class;
-- function U_lshift_U(self : access Inst;i_P : int) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; m_P : access QtAda6.QtCore.QTextStreamManipulator.Inst'Class)
      return access QtAda6.QtCore.QTextStream.Inst'Class;
-- function U_lshift_U(self : access Inst;s_P : str) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; array_K_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QTextStream.Inst'Class;
   function atEnd (self : access Inst) return bool;
   function autoDetectUnicode (self : access Inst) return bool;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function encoding (self : access Inst) return access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class;
   function fieldAlignment_F (self : access Inst) return access QtAda6.QtCore.QTextStream.FieldAlignment.Inst'Class;
   function fieldWidth (self : access Inst) return int;
   procedure flush (self : access Inst);
   function generateByteOrderMark (self : access Inst) return bool;
   function integerBase (self : access Inst) return int;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   function numberFlags (self : access Inst) return access QtAda6.QtCore.QTextStream.NumberFlag.Inst'Class;
   function padChar (self : access Inst) return str;
   function pos (self : access Inst) return int;
   function read (self : access Inst; maxlen_P : int) return str;
   function readAll (self : access Inst) return str;
   function readLine (self : access Inst; maxlen_P : int := 0) return str;
   function readLineInto (self : access Inst; maxlen_P : int := 0) return TUPLE_boolstr;
   function realNumberNotation_F
     (self : access Inst) return access QtAda6.QtCore.QTextStream.RealNumberNotation.Inst'Class;
   function realNumberPrecision (self : access Inst) return int;
   procedure reset (self : access Inst);
   procedure resetStatus (self : access Inst);
   function seek (self : access Inst; pos_P : int) return bool;
   procedure setAutoDetectUnicode (self : access Inst; enabled_P : bool);
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setEncoding (self : access Inst; encoding_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class);
   procedure setFieldAlignment
     (self : access Inst; alignment_P : access QtAda6.QtCore.QTextStream.FieldAlignment.Inst'Class);
   procedure setFieldWidth (self : access Inst; width_P : int);
   procedure setGenerateByteOrderMark (self : access Inst; generate_P : bool);
   procedure setIntegerBase (self : access Inst; base_P : int);
   procedure setLocale (self : access Inst; locale_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language);
   procedure setNumberFlags (self : access Inst; flags_P : access QtAda6.QtCore.QTextStream.NumberFlag.Inst'Class);
   procedure setPadChar (self : access Inst; ch_P : str);
   procedure setRealNumberNotation
     (self : access Inst; notation_P : access QtAda6.QtCore.QTextStream.RealNumberNotation.Inst'Class);
   procedure setRealNumberPrecision (self : access Inst; precision_P : int);
   procedure setStatus (self : access Inst; status_P : access QtAda6.QtCore.QTextStream.Status.Inst'Class);
   procedure skipWhiteSpace (self : access Inst);
   function status_F (self : access Inst) return access QtAda6.QtCore.QTextStream.Status.Inst'Class;
   function string (self : access Inst) return LIST_str;
end QtAda6.QtCore.QTextStream;
