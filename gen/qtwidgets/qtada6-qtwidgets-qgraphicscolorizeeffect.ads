-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicscolorizeeffect.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtWidgets.QGraphicsEffect;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QGraphicsColorizeEffect is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsEffect.Inst with null record;
   procedure Finalize (Self : in out Class);
   function colorChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- colorChanged(QColor)
   function strengthChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- strengthChanged(double)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function color (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   procedure draw (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   procedure setColor (self : access Inst; c_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setColor (self : access Inst; c_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setColor (self : access Inst; c_P : Any);
   procedure setColor (self : access Inst; c_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setColor (self : access Inst; c_P : str);
   procedure setColor (self : access Inst; c_P : int);
   procedure setStrength (self : access Inst; strength_P : float);
   function strength (self : access Inst) return float;
end QtAda6.QtWidgets.QGraphicsColorizeEffect;
