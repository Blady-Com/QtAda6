-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfileselector.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QFileSelector is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type LIST_str is array (Positive range <>) of str;
   type UNION_QtAda6_QtCore_QUrlstr is new Any;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function allSelectors (self : access Inst) return LIST_str;
   function extraSelectors (self : access Inst) return LIST_str;
   function select_K (self : access Inst; filePath_P : str) return str;
   function select_K
     (self : access Inst; filePath_P : UNION_QtAda6_QtCore_QUrlstr) return access QtAda6.QtCore.QUrl.Inst'Class;
   procedure setExtraSelectors (self : access Inst; list_P : SEQUENCE_str);
end QtAda6.QtCore.QFileSelector;
