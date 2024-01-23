-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QPaintEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   type UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) return Class;
   function Create (paintRect_P : access QtAda6.QtCore.QRect.Inst'Class) return Class;
   function Create
     (paintRegion_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect)
      return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QPaintEvent.Inst'Class;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function region (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
end QtAda6.QtGui.QPaintEvent;
