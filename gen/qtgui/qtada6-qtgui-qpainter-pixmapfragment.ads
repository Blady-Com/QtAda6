-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainter-pixmapfragment.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
package QtAda6.QtGui.QPainter.PixmapFragment is
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (PixmapFragment_P : access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class) return Class;
   procedure U_copy_U;
   function create
     (pos_P        : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      sourceRect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; scaleX_P : float; scaleY_P : float;
      rotation_P   : float; opacity_P : float) return access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class;
end QtAda6.QtGui.QPainter.PixmapFragment;
