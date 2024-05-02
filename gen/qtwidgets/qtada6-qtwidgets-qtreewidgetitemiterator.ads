-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtreewidgetitemiterator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QTreeWidget;
limited with QtAda6.QtWidgets.QTreeWidgetItem;
limited with QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag;
package QtAda6.QtWidgets.QTreeWidgetItemIterator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (it_P : access QtAda6.QtWidgets.QTreeWidgetItemIterator.Inst'Class) return Class;
   function Create (it_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class) return Class;
   function Create (it_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) return Class;
   function Create
     (item_P  : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
      flags_P : access QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag.Inst'Class := null) return Class;
   function Create
     (widget_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class;
      flags_P  : access QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag.Inst'Class := null) return Class;
   procedure U_copy_U;
   function U_iadd_U (self : access Inst; n_P : int) return access QtAda6.QtWidgets.QTreeWidgetItemIterator.Inst'Class;
   function U_isub_U (self : access Inst; n_P : int) return access QtAda6.QtWidgets.QTreeWidgetItemIterator.Inst'Class;
   function U_iter_U (self : access Inst) return access Object'Class;
   function U_next_U (self : access Inst) return access Object'Class;
   function value (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
end QtAda6.QtWidgets.QTreeWidgetItemIterator;
