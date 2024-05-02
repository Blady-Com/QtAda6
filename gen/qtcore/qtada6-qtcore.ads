-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QGenericArgumentHolder;
limited with QtAda6.QtCore.QGenericReturnArgumentHolder;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QtMsgType;
limited with QtAda6.QtCore.QMessageLogContext;
package QtAda6.QtCore is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is tagged null record;
-- Copyright (C) 2022 The Qt Company Ltd.
-- SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only
--
--This file contains the exact signatures for all functions in module
--QtAda6.QtCore, except for defaults which are replaced by "...".
--
-- Module `QtAda6.QtCore`
   function QEnum (arg_1_P : access Object'Class) return access Object'Class;
   function QFlag (arg_1_P : access Object'Class) return access Object'Class;
   function QT_TRANSLATE_NOOP (arg_1_P : access Object'Class; arg_2_P : access Object'Class) return access Object'Class;
   function QT_TRANSLATE_NOOP3
     (arg_1_P : access Object'Class; arg_2_P : access Object'Class; arg_3_P : access Object'Class)
      return access Object'Class;
   function QT_TRANSLATE_NOOP_UTF8 (arg_1_P : access Object'Class) return access Object'Class;
   function QT_TR_NOOP (arg_1_P : access Object'Class) return access Object'Class;
   function QT_TR_NOOP_UTF8 (arg_1_P : access Object'Class) return access Object'Class;
   function Q_ARG
     (type_K_P : access Object'Class; value_P : access Object'Class)
      return access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
   function Q_RETURN_ARG
     (type_K_P : access Object'Class) return access QtAda6.QtCore.QGenericReturnArgumentHolder.Inst'Class;
   function SIGNAL_F (arg_1_P : bytes) return str;
   function SLOT_F (arg_1_P : bytes) return str;
   procedure U_init_feature_U;
   procedure U_moduleShutdown;
   function qAbs (arg_1_P : float) return float;
   procedure qAddPostRoutine (arg_1_P : access Object'Class);
   procedure qCCritical (arg_1_P : access Object'Class; arg_2_P : bytes);
   procedure qCDebug (arg_1_P : access Object'Class; arg_2_P : bytes);
   procedure qCInfo (arg_1_P : access Object'Class; arg_2_P : bytes);
   procedure qCWarning (arg_1_P : access Object'Class; arg_2_P : bytes);
   function qCompress
     (data_P : access QtAda6.QtCore.QByteArray.Inst'Class; compressionLevel_P : int := 0)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function qCompress (data_P : bytes; compressionLevel_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function qCompress
     (data_P : bytes; nbytes_P : int; compressionLevel_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure qCritical (arg_1_P : bytes);
   procedure qDebug (arg_1_P : bytes);
   function qFastCos (x_P : float) return float;
   function qFastSin (x_P : float) return float;
   procedure qFatal (arg_1_P : bytes);
   function qFormatLogMessage
     (type_K_P  : access QtAda6.QtCore.QtMsgType.Inst'Class;
      context_P : access QtAda6.QtCore.QMessageLogContext.Inst'Class; buf_P : str) return str;
   function qFuzzyCompare (p1_P : float; p2_P : float) return bool;
   function qFuzzyIsNull (d_P : float) return bool;
   function qInstallMessageHandler (arg_1_P : access Object'Class) return access Object'Class;
   function qIsFinite (d_P : float) return bool;
   function qIsInf (d_P : float) return bool;
   function qIsNaN (d_P : float) return bool;
   function qIsNull (d_P : float) return bool;
   function qRegisterResourceData (arg_1_P : int; arg_2_P : bytes; arg_3_P : bytes; arg_4_P : bytes) return bool;
   procedure qSetMessagePattern (messagePattern_P : str);
   function qUncompress
     (data_P : access QtAda6.QtCore.QByteArray.Inst'Class) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function qUncompress (data_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function qUncompress (data_P : bytes; nbytes_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function qUnregisterResourceData (arg_1_P : int; arg_2_P : bytes; arg_3_P : bytes; arg_4_P : bytes) return bool;
   function qVersion return str;
   procedure qWarning (arg_1_P : bytes);
   function qtTrId (id_P : bytes; n_P : int := 0) return str;
-- eof
end QtAda6.QtCore;
