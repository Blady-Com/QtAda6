-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcolormap.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtWidgets.QColormap.Mode;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
package QtAda6.QtWidgets.QColormap is
   type List_QtAda6_QtGui_QColor is access Any;
   type Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (colormap_P : access QtAda6.QtWidgets.QColormap.Inst'Class) return Class;
   procedure U_copy_U;
   procedure cleanup;
   function colorAt (self : access Inst; pixel_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function colormap (self : access Inst) return List_QtAda6_QtGui_QColor;
   function depth (self : access Inst) return int;
   procedure initialize;
   function instance (screen_P : int) return access QtAda6.QtWidgets.QColormap.Inst'Class;
   function mode_F (self : access Inst) return access QtAda6.QtWidgets.QColormap.Mode.Inst'Class;
   function pixel
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) return int;
   function size (self : access Inst) return int;
end QtAda6.QtWidgets.QColormap;
