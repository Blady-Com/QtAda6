-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qexposeevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QExposeEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QExposeEvent.Inst'Class) return Class;
   function Create (m_region_P : access QtAda6.QtGui.QRegion.Inst'Class) return Class;
   function Create (m_region_P : access QtAda6.QtGui.QBitmap.Inst'Class) return Class;
   function Create (m_region_P : access QtAda6.QtGui.QPolygon.Inst'Class) return Class;
   function Create (m_region_P : access QtAda6.QtCore.QRect.Inst'Class) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QExposeEvent.Inst'Class;
   function region (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
end QtAda6.QtGui.QExposeEvent;
