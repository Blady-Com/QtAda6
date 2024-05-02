-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpicture.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
limited with QtAda6.QtGui.QPaintEngine;
limited with QtAda6.QtGui.QPainter;
with QtAda6.QtGui.QPaintDevice;
package QtAda6.QtGui.QPicture is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QPaintDevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QPicture.Inst'Class) return Class;
   function Create (arg_1_P : int) return Class;
-- function Create(formatVersion_P : int := 0) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function data (self : access Inst) return access Object'Class;
   function devType (self : access Inst) return int;
   function isNull (self : access Inst) return bool;
   function load (self : access Inst; dev_P : access QtAda6.QtCore.QIODevice.Inst'Class) return bool;
   function load (self : access Inst; fileName_P : str) return bool;
   function metric (self : access Inst; m_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class;
   function play (self : access Inst; p_P : access QtAda6.QtGui.QPainter.Inst'Class) return bool;
   function save (self : access Inst; dev_P : access QtAda6.QtCore.QIODevice.Inst'Class) return bool;
   function save (self : access Inst; fileName_P : str) return bool;
   procedure setBoundingRect (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setData (self : access Inst; data_P : bytes);
   function size (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPicture.Inst'Class);
   procedure swap (self : access Inst; other_P : int);
end QtAda6.QtGui.QPicture;
