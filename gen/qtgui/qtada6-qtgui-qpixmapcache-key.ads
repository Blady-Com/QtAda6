-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixmapcache-key.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPixmapCache.Key is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class) return Class;
   procedure U_copy_U;
   function isValid (self : access Inst) return bool;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPixmapCache.Key.Inst'Class);
end QtAda6.QtGui.QPixmapCache.Key;
