-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputmethodevent-attribute.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QInputMethodEvent.AttributeType;
package QtAda6.QtGui.QInputMethodEvent.Attribute is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (Attribute_P : access QtAda6.QtGui.QInputMethodEvent.Attribute.Inst'Class) return Class;
   function Create
     (typ_P : access QtAda6.QtGui.QInputMethodEvent.AttributeType.Inst'Class; s_P : int; l_P : int) return Class;
   function Create
     (typ_P : access QtAda6.QtGui.QInputMethodEvent.AttributeType.Inst'Class; s_P : int; l_P : int; val_P : Any)
      return Class;
   procedure U_copy_U;
end QtAda6.QtGui.QInputMethodEvent.Attribute;
