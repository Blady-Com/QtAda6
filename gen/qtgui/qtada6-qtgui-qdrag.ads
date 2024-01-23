-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qdrag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtGui.QImage;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QDrag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr is new Any;
   procedure Finalize (Self : in out Class);
   function actionChanged (self : access Inst) return CLASSVAR_Signal;-- actionChanged(Qt::DropAction)
   function targetChanged (self : access Inst) return CLASSVAR_Signal;-- targetChanged(QObject*)
   function Create (dragSource_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   procedure cancel;
   function defaultAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function dragCursor
     (self : access Inst; action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function exec
     (self            : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;
      defaultAction_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class)
      return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function exec
     (self : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class := null)
      return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function exec_U
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;
      arg_2_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function exec_U
     (self : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class := null)
      return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function hotSpot (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function mimeData (self : access Inst) return access QtAda6.QtCore.QMimeData.Inst'Class;
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure setDragCursor
     (self     : access Inst; cursor_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class);
   procedure setHotSpot (self : access Inst; hotspot_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setMimeData (self : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class);
   procedure setPixmap (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr);
   function source (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function supportedActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function target (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
end QtAda6.QtGui.QDrag;
