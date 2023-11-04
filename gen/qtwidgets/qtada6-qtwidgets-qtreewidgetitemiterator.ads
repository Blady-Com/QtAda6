-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtreewidgetitemiterator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QTreeWidget;
limited with QtAda6.QtWidgets.QTreeWidgetItem;
limited with QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag;
package QtAda6.QtWidgets.QTreeWidgetItemIterator is
   type Union_QtAda6_QtWidgets_QTreeWidgetItemIterator_QtAda6_QtWidgets_QTreeWidget_QtAda6_QtWidgets_QTreeWidgetItem is
     access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (it_P : Union_QtAda6_QtWidgets_QTreeWidgetItemIterator_QtAda6_QtWidgets_QTreeWidget_QtAda6_QtWidgets_QTreeWidgetItem)
      return Class;
   function Create
     (item_P  : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
      flags_P : access QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag.Inst'Class) return Class;
   function Create
     (widget_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class;
      flags_P  : access QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag.Inst'Class) return Class;
   procedure U_copy_U;
   function U_iadd_U (self : access Inst; n_P : int) return access QtAda6.QtWidgets.QTreeWidgetItemIterator.Inst'Class;
   function U_isub_U (self : access Inst; n_P : int) return access QtAda6.QtWidgets.QTreeWidgetItemIterator.Inst'Class;
   function U_iter_U (self : access Inst) return Object;
   function U_next_U (self : access Inst) return Object;
   function value (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
end QtAda6.QtWidgets.QTreeWidgetItemIterator;
