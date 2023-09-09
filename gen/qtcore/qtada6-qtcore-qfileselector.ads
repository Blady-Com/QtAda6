-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfileselector.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QFileSelector is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type List_str is access Any;
   type Union_QtAda6_QtCore_QUrl_str is access Any;
   type Sequence_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function allSelectors (self : access Inst) return List_str;
   function extraSelectors (self : access Inst) return List_str;
   function select_K (self : access Inst; filePath_P : str) return str;
   function select_K
     (self : access Inst; filePath_P : Union_QtAda6_QtCore_QUrl_str) return access QtAda6.QtCore.QUrl.Inst'Class;
   procedure setExtraSelectors (self : access Inst; list_P : Sequence_str);
end QtAda6.QtCore.QFileSelector;
