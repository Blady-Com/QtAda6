-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore;
limited with QtAda6.QtGui.QQuaternion;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QVector2D;
limited with QtAda6.QtGui.QVector3D;
limited with QtAda6.QtGui.QVector4D;
limited with QtAda6.QtGui.QMatrix4x4;
limited with QtAda6.QtGui.QPixelFormat.TypeInterpretation;
limited with QtAda6.QtGui.QPixelFormat;
limited with QtAda6.QtGui.QPixelFormat.AlphaUsage;
limited with QtAda6.QtGui.QPixelFormat.AlphaPosition;
limited with QtAda6.QtGui.QPixelFormat.AlphaPremultiplied;
limited with QtAda6.QtGui.QPixelFormat.YUVLayout;
limited with QtAda6.QtGui.QPixelFormat.ByteOrder;
package QtAda6.QtGui is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is tagged null record;
   type UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform is new Any;
-- Copyright (C) 2022 The Qt Company Ltd.
-- SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only
--
--This file contains the exact signatures for all functions in module
--QtAda6.QtGui, except for defaults which are replaced by "...".
--
-- Module `QtAda6.QtGui`
   function qAlpha (rgb_P : int) return int;
   function qBlue (rgb_P : int) return int;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; arg_2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return bool;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class; arg_2_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return bool;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector2D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return bool;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector3D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return bool;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector4D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector4D.Inst'Class)
      return bool;
   function qFuzzyCompare
     (arg_1_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform;
      arg_2_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform) return bool;
   function qGray (r_P : int; g_P : int; b_P : int) return int;
   function qGray (rgb_P : int) return int;
   function qGreen (rgb_P : int) return int;
   function qIsGray (rgb_P : int) return bool;
   function qPixelFormatAlpha
     (channelSize_P : int; typeInt_P : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function qPixelFormatCmyk
     (channelSize_P : int; alfa_P : int := 0; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class := null;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class      := null;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function qPixelFormatGrayscale
     (channelSize_P : int; typeInt_P : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function qPixelFormatHsl
     (channelSize_P : int; alfa_P : int := 0; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class := null;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class      := null;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function qPixelFormatHsv
     (channelSize_P : int; alfa_P : int := 0; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class := null;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class      := null;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function qPixelFormatRgba
     (red_P      : int; green_P : int; blue_P : int; alfa_P : int;
      usage_P    : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      position_P : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      pmul_P     : access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class := null;
      typeInt_P  : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function qPixelFormatYuv
     (layout_P   : access QtAda6.QtGui.QPixelFormat.YUVLayout.Inst'Class; alfa_P : int := 0;
      usage_P    : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class         := null;
      position_P : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class      := null;
      p_mul_P    : access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class := null;
      typeInt_P  : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null;
      b_order_P  : access QtAda6.QtGui.QPixelFormat.ByteOrder.Inst'Class          := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function qRed (rgb_P : int) return int;
   function qRgb_F (r_P : int; g_P : int; b_P : int) return int;
   function qRgba_F (r_P : int; g_P : int; b_P : int; a_P : int) return int;
   procedure qt_set_sequence_auto_mnemonic (b_P : bool);
-- eof
end QtAda6.QtGui;
