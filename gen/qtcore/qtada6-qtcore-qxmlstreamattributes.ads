-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qxmlstreamattributes.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QXmlStreamAttribute;
package QtAda6.QtCore.QXmlStreamAttributes is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute is QtAda6.QtCore.QXmlStreamAttribute.Class_Array;
   subtype LIST_QtAda6_QtCore_QXmlStreamAttribute is QtAda6.QtCore.QXmlStreamAttribute.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QXmlStreamAttributes_P : access QtAda6.QtCore.QXmlStreamAttributes.Inst'Class) return Class;
   function U_add_U
     (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute)
      return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute)
      return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   procedure append (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class);
   procedure append (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute);
   procedure append (self : access Inst; namespaceUri_P : str; name_P : str; value_P : str);
   procedure append (self : access Inst; qualifiedName_P : str; value_P : str);
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function back (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function capacity (self : access Inst) return int;
   procedure clear (self : access Inst);
   function constData (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function constFirst (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function constLast (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function count (self : access Inst) return int;
   function data (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function empty (self : access Inst) return bool;
   function first (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function first (self : access Inst; n_P : int) return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   function fromVector
     (vector_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute) return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   function front (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function hasAttribute (self : access Inst; namespaceUri_P : str; name_P : str) return bool;
   function hasAttribute (self : access Inst; qualifiedName_P : str) return bool;
   procedure insert (self : access Inst; arg_1_P : int; arg_2_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class);
   function isEmpty (self : access Inst) return bool;
   function isSharedWith (self : access Inst; other_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute) return bool;
   function last (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function last (self : access Inst; n_P : int) return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   function length (self : access Inst) return int;
   function mid (self : access Inst; pos_P : int; len_P : int := 0) return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   procedure move (self : access Inst; from_U_P : int; to_P : int);
   procedure prepend (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class);
   procedure push_back (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class);
   procedure push_front (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class);
   procedure remove (self : access Inst; i_P : int; n_P : int := 0);
   procedure removeAll (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class);
   procedure removeAt (self : access Inst; i_P : int);
   procedure removeFirst (self : access Inst);
   procedure removeLast (self : access Inst);
   procedure removeOne (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class);
   procedure reserve (self : access Inst; size_P : int);
   procedure resize (self : access Inst; size_P : int);
   procedure shrink_to_fit (self : access Inst);
   function size (self : access Inst) return int;
   function sliced (self : access Inst; pos_P : int) return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   function sliced (self : access Inst; pos_P : int; n_P : int) return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   procedure squeeze (self : access Inst);
   procedure swap (self : access Inst; other_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute);
   procedure swapItemsAt (self : access Inst; i_P : int; j_P : int);
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class;
   function toVector (self : access Inst) return LIST_QtAda6_QtCore_QXmlStreamAttribute;
   function value (self : access Inst; namespaceUri_P : str; name_P : str) return str;
   function value (self : access Inst; qualifiedName_P : str) return str;
end QtAda6.QtCore.QXmlStreamAttributes;
