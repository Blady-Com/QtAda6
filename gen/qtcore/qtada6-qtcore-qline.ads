-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qline.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QLineF;
package QtAda6.QtCore.QLine is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QLine_P : access QtAda6.QtCore.QLine.Inst'Class) return Class;
   function Create
     (pt1_P : access QtAda6.QtCore.QPoint.Inst'Class; pt2_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class;
   function Create (x1_P : int; y1_P : int; x2_P : int; y2_P : int) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function center (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function dx (self : access Inst) return int;
   function dy (self : access Inst) return int;
   function isNull (self : access Inst) return bool;
   function p1 (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function p2 (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure setLine (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int);
   procedure setP1 (self : access Inst; p1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setP2 (self : access Inst; p2_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setPoints
     (self : access Inst; p1_P : access QtAda6.QtCore.QPoint.Inst'Class; p2_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function toLineF (self : access Inst) return access QtAda6.QtCore.QLineF.Inst'Class;
   function toTuple (self : access Inst) return access Object'Class;
   procedure translate (self : access Inst; dx_P : int; dy_P : int);
   procedure translate (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function translated (self : access Inst; dx_P : int; dy_P : int) return access QtAda6.QtCore.QLine.Inst'Class;
   function translated
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QLine.Inst'Class;
   function x1 (self : access Inst) return int;
   function x2 (self : access Inst) return int;
   function y1 (self : access Inst) return int;
   function y2 (self : access Inst) return int;
end QtAda6.QtCore.QLine;
