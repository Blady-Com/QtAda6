-------------------------------------------------------------------------------
-- NAME (spec)                  : argumentlistmodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Command line arguments
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with QtAda6.QtCore.QAbstractListModel;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QModelIndex;
with UXStrings.Lists;

package ArgumentListModel is

   type Argument_List_Model is new QtAda6.QtCore.QAbstractListModel.Inst with private;
   type Argument_List_Model_Access is access all Argument_List_Model;
   type Class is access all Argument_List_Model'Class;

   function Create (Parent : access QtAda6.QtCore.QObject.Inst := null) return Class;

   overriding function RowCount
     (Self : access Argument_List_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class) return QtAda6.int;
   overriding function Data
     (Self : access Argument_List_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class; Role : QtAda6.int)
      return QtAda6.QVariant;

private

   type Argument_List_Model is new QtAda6.QtCore.QAbstractListModel.Inst with record
      argumentList : UXStrings.Lists.UXString_List;
   end record;

   procedure Assert_Index_Is_Valid
     (Self : access Argument_List_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class);

end ArgumentListModel;
