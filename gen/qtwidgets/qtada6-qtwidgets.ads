-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPalette;
package QtAda6.QtWidgets is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is tagged null record;
-- Copyright (C) 2022 The Qt Company Ltd.
-- SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only
--
--This file contains the exact signatures for all functions in module
--QtAda6.QtWidgets, except for defaults which are replaced by "...".
--
-- Module `QtAda6.QtWidgets`
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : Any;
      lineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : str;
      lineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class; arg_3_P : int;
      lineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtGui.QRgba64.Inst'Class; lineWidth_P : int := 0;
      fill_P  : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : Any;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : Any;
      lineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P     : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; lineWidth_P : int := 0;
      fill_P  : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : str;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : str;
      lineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : int;
      lineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int; arg_6_P : int;
      lineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadeLine
     (p_P      : access QtAda6.QtGui.QPainter.Inst'Class; p1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      p2_P     : access QtAda6.QtCore.QPoint.Inst'Class; pal_P : access QtAda6.QtGui.QPalette.Inst'Class;
      sunken_P : bool := False; lineWidth_P : int := 0; midLineWidth_P : int := 0);
   procedure qDrawShadeLine
     (p_P      : access QtAda6.QtGui.QPainter.Inst'Class; p1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      p2_P     : access QtAda6.QtCore.QPoint.Inst'Class; pal_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      sunken_P : bool := False; lineWidth_P : int := 0; midLineWidth_P : int := 0);
   procedure qDrawShadeLine
     (p_P      : access QtAda6.QtGui.QPainter.Inst'Class; p1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      p2_P     : access QtAda6.QtCore.QPoint.Inst'Class; pal_P : access QtAda6.QtGui.QColor.Inst'Class;
      sunken_P : bool := False; lineWidth_P : int := 0; midLineWidth_P : int := 0);
   procedure qDrawShadeLine
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x1_P : int; y1_P : int; x2_P : int; y2_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0);
   procedure qDrawShadeLine
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x1_P : int; y1_P : int; x2_P : int; y2_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0);
   procedure qDrawShadeLine
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x1_P : int; y1_P : int; x2_P : int; y2_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadePanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawShadeRect
     (p_P            : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P          : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False; lineWidth_P : int := 0;
      midLineWidth_P : int := 0; fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QPalette.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QBrush.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QGradient.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QImage.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : access QtAda6.QtGui.QPixmap.Inst'Class := null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : access QtAda6.QtGui.QColor.Inst'Class; sunken_P : bool := False;
      fill_P : NoneType := NoneType_default_is_not_supported);
-- eof
end QtAda6.QtWidgets;
