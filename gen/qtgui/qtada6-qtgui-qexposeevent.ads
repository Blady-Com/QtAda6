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
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QExposeEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   type UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QExposeEvent.Inst'Class) return Class;
   function Create
     (m_region_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QExposeEvent.Inst'Class;
   function region (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
end QtAda6.QtGui.QExposeEvent;
