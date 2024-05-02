-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qcolortransform.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
package QtAda6.QtGui.QColorTransform is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (colorTransform_P : access QtAda6.QtGui.QColorTransform.Inst'Class) return Class;
   procedure U_copy_U;
   function isIdentity (self : access Inst) return bool;
   function map (self : access Inst; argb_P : int) return int;
   function map
     (self : access Inst; color_P : access QtAda6.QtGui.QColor.Inst'Class) return access QtAda6.QtGui.QColor.Inst'Class;
   function map
     (self : access Inst; color_P : access QtAda6.QtGui.QRgba64.Inst'Class)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function map (self : access Inst; color_P : Any) return access QtAda6.QtGui.QColor.Inst'Class;
   function map
     (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function map (self : access Inst; color_P : str) return access QtAda6.QtGui.QColor.Inst'Class;
   function map (self : access Inst; color_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function map
     (self : access Inst; rgba64_P : access QtAda6.QtGui.QRgba64.Inst'Class)
      return access QtAda6.QtGui.QRgba64.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QColorTransform.Inst'Class);
end QtAda6.QtGui.QColorTransform;
