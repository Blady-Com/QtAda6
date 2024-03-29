-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixmapcache.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPixmapCache.Key;
package QtAda6.QtGui.QPixmapCache is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function cacheLimit return int;
   procedure clear;
   function find
     (key_P    : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return bool;
   function find (key_P : str; pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return bool;
   procedure find (self : access Inst; arg_1_P : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class);
   procedure find (self : access Inst; arg_1_P : str);
   function insert (key_P : str; pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return bool;
   function insert
     (pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str)
      return access QtAda6.QtGui.QPixmapCache.Key.Inst'Class;
   procedure remove (key_P : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class);
   procedure remove (key_P : str);
   function replace
     (key_P    : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return bool;
   procedure setCacheLimit (arg_1_P : int);
end QtAda6.QtGui.QPixmapCache;
