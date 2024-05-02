-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qintvalidator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QValidator;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QIntValidator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QValidator.Inst with null record;
   procedure Finalize (Self : in out Class);
   function bottomChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- bottomChanged(int)
   function topChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- topChanged(int)
   function Create
     (bottom_P : int; top_P : int; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function bottom (self : access Inst) return int;
   function fixup (self : access Inst; input_P : str) return str;
   procedure setBottom (self : access Inst; arg_1_P : int);
   procedure setRange (self : access Inst; bottom_P : int; top_P : int);
   procedure setTop (self : access Inst; arg_1_P : int);
   function top (self : access Inst) return int;
   function validate (self : access Inst; arg_1_P : str; arg_2_P : int) return access Object'Class;
end QtAda6.QtGui.QIntValidator;
