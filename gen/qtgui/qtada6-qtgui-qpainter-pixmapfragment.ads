-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainter-pixmapfragment.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
--  limited with QtAda6.QtCore.QPointF;
--  limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
--  limited with QtAda6.QtCore.QRectF;
--  limited with QtAda6.QtCore.QRect; -- error: unlimited view visible through context clause at qtada6-qtgui-qpainter.ads:55
package QtAda6.QtGui.QPainter.PixmapFragment is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (PixmapFragment_P : access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class) return Class;
   procedure U_copy_U;
   function create
     (pos_P        : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      sourceRect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect; scaleX_P : float := 0.0; scaleY_P : float := 0.0;
      rotation_P   : float := 0.0; opacity_P : float := 0.0)
      return access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class;
end QtAda6.QtGui.QPainter.PixmapFragment;
