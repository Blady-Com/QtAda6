-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qbytearraymatcher.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QByteArrayMatcher is
   type Union_QtAda6_QtCore_QByteArrayMatcher_bytes is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : Union_QtAda6_QtCore_QByteArrayMatcher_bytes) return Class;
   function Create (pattern_P : bytes; length_P : int) return Class;
   function Create (pattern_P : Union_QtAda6_QtCore_QByteArray_bytes) return Class;
   procedure U_copy_U;
   function indexIn (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes; from_U_P : int) return int;
   function indexIn (self : access Inst; str_P : bytes; len_P : int; from_U_P : int) return int;
   function pattern (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure setPattern (self : access Inst; pattern_P : Union_QtAda6_QtCore_QByteArray_bytes);
end QtAda6.QtCore.QByteArrayMatcher;
