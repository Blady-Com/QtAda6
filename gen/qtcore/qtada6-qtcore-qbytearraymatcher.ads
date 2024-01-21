-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qbytearraymatcher.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QByteArrayMatcher is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArrayMatcherbytes is new Any;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : UNION_QtAda6_QtCore_QByteArrayMatcherbytes) return Class;
   function Create (pattern_P : bytes; length_P : int := 0) return Class;
   function Create (pattern_P : UNION_QtAda6_QtCore_QByteArraybytes) return Class;
   procedure U_copy_U;
   function indexIn (self : access Inst; data_P : UNION_QtAda6_QtCore_QByteArraybytes; from_U_P : int := 0) return int;
   function indexIn (self : access Inst; str_P : bytes; len_P : int; from_U_P : int := 0) return int;
   function pattern (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure setPattern (self : access Inst; pattern_P : UNION_QtAda6_QtCore_QByteArraybytes);
end QtAda6.QtCore.QByteArrayMatcher;
