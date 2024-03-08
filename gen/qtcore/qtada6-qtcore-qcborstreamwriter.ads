-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborstreamwriter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QCborSimpleType;
limited with QtAda6.QtCore.QCborKnownTags;
limited with QtAda6.QtCore.QCborTag;
package QtAda6.QtCore.QCborStreamWriter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create (data_P : UNION_QtAda6_QtCore_QByteArray_bytes) return Class;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class;
   procedure append (self : access Inst; b_P : bool);
   procedure append (self : access Inst; ba_P : UNION_QtAda6_QtCore_QByteArray_bytes);
   procedure append (self : access Inst; d_P : float);
-- procedure append(self : access Inst;f_P : float);
   procedure append (self : access Inst; i_P : int);
-- procedure append(self : access Inst;i_P : int);
   procedure append (self : access Inst; st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class);
   procedure append (self : access Inst; str_P : str);
   procedure append (self : access Inst; str_P : bytes; size_P : int := 0);
   procedure append (self : access Inst; tag_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class);
   procedure append (self : access Inst; tag_P : access QtAda6.QtCore.QCborTag.Inst'Class);
-- procedure append(self : access Inst;u_P : int);
-- procedure append(self : access Inst;u_P : int);
   procedure appendByteString (self : access Inst; data_P : bytes; len_P : int);
   procedure appendNull (self : access Inst);
   procedure appendTextString (self : access Inst; utf8_P : bytes; len_P : int);
   procedure appendUndefined (self : access Inst);
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function endArray (self : access Inst) return bool;
   function endMap (self : access Inst) return bool;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure startArray (self : access Inst);
   procedure startArray (self : access Inst; count_P : int);
   procedure startMap (self : access Inst);
   procedure startMap (self : access Inst; count_P : int);
end QtAda6.QtCore.QCborStreamWriter;
