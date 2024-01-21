-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtime.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.DateFormat;
package QtAda6.QtCore.QTime is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTime_P : access QtAda6.QtCore.QTime.Inst'Class) return Class;
   function Create (h_P : int; m_P : int; s_P : int := 0; ms_P : int := 0) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function addMSecs (self : access Inst; ms_P : int) return access QtAda6.QtCore.QTime.Inst'Class;
   function addSecs (self : access Inst; secs_P : int) return access QtAda6.QtCore.QTime.Inst'Class;
   function currentTime return access QtAda6.QtCore.QTime.Inst'Class;
   function fromMSecsSinceStartOfDay (msecs_P : int) return access QtAda6.QtCore.QTime.Inst'Class;
   function fromString
     (string_P : str; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class := null)
      return access QtAda6.QtCore.QTime.Inst'Class;
   function fromString (string_P : str; format_P : str) return access QtAda6.QtCore.QTime.Inst'Class;
   function hour (self : access Inst) return int;
   function isNull (self : access Inst) return bool;
   function isValid (h_P : int; m_P : int; s_P : int; ms_P : int := 0) return bool;
   function isValid (self : access Inst) return bool;
   function minute (self : access Inst) return int;
   function msec (self : access Inst) return int;
   function msecsSinceStartOfDay (self : access Inst) return int;
   function msecsTo (self : access Inst; t_P : access QtAda6.QtCore.QTime.Inst'Class) return int;
   function second (self : access Inst) return int;
   function secsTo (self : access Inst; t_P : access QtAda6.QtCore.QTime.Inst'Class) return int;
   function setHMS (self : access Inst; h_P : int; m_P : int; s_P : int; ms_P : int := 0) return bool;
   function toPython (self : access Inst) return access Object'Class;
   function toString (self : access Inst; f_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class := null) return str;
   function toString (self : access Inst; format_P : str) return str;
end QtAda6.QtCore.QTime;
