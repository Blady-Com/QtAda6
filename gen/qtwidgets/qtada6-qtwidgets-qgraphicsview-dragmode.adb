-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsview-dragmode.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QGraphicsView.DragMode is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoDrag return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsView");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoDrag"));
   end NoDrag;
   function ScrollHandDrag return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsView");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ScrollHandDrag"));
   end ScrollHandDrag;
   function RubberBandDrag return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsView");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RubberBandDrag"));
   end RubberBandDrag;
end QtAda6.QtWidgets.QGraphicsView.DragMode;
