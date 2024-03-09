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
limited with QtAda6.QtCore.QPoint;
package QtAda6.QtWidgets is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is tagged null record;
   type UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is new Any;
   type UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType is
     new Any;
   type UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is new Any;
-- Copyright (C) 2022 The Qt Company Ltd.
-- SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only
--
--This file contains the exact signatures for all functions in module
--QtAda6.QtWidgets, except for defaults which are replaced by "...".
--
-- Module `QtAda6.QtWidgets`
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P     : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      lineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P     : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      lineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawShadeLine
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; p1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      p2_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0; midLineWidth_P : int := 0);
   procedure qDrawShadeLine
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x1_P : int; y1_P : int; x2_P : int; y2_P : int;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0; midLineWidth_P : int := 0);
   procedure qDrawShadePanel
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawShadePanel
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawShadeRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0; midLineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawShadeRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0; midLineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null);
-- eof
end QtAda6.QtWidgets;
