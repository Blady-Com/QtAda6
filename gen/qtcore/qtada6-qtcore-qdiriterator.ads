-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdiriterator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDirIterator.IteratorFlag;
limited with QtAda6.QtCore.QDir.Filter;
limited with QtAda6.QtCore.QFileInfo;
package QtAda6.QtCore.QDirIterator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QDir_str is new Any;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create
     (dir_P : UNION_QtAda6_QtCore_QDir_str; flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class := null)
      return Class;
   function Create
     (path_P  : str; filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class;
      flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class := null) return Class;
   function Create
     (path_P : str; flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class := null) return Class;
   function Create
     (path_P  : str; nameFilters_P : SEQUENCE_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class := null) return Class;
   function fileInfo (self : access Inst) return access QtAda6.QtCore.QFileInfo.Inst'Class;
   function fileName (self : access Inst) return str;
   function filePath (self : access Inst) return str;
   function hasNext (self : access Inst) return bool;
   function next (self : access Inst) return str;
   function nextFileInfo (self : access Inst) return access QtAda6.QtCore.QFileInfo.Inst'Class;
   function path (self : access Inst) return str;
end QtAda6.QtCore.QDirIterator;
