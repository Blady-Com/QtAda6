-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpointingdeviceuniqueid.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPointingDeviceUniqueId is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QPointingDeviceUniqueId_P : access QtAda6.QtGui.QPointingDeviceUniqueId.Inst'Class) return Class;
   procedure U_copy_U;
   function fromNumericId (id_P : int) return access QtAda6.QtGui.QPointingDeviceUniqueId.Inst'Class;
   function isValid (self : access Inst) return bool;
   function numericId (self : access Inst) return int;
end QtAda6.QtGui.QPointingDeviceUniqueId;
