-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpainter-compositionmode.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtGui.QPainter.CompositionMode is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function CompositionMode_SourceOver return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_SourceOver"));
   end CompositionMode_SourceOver;
   function CompositionMode_DestinationOver return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_DestinationOver"));
   end CompositionMode_DestinationOver;
   function CompositionMode_Clear return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Clear"));
   end CompositionMode_Clear;
   function CompositionMode_Source return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Source"));
   end CompositionMode_Source;
   function CompositionMode_Destination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Destination"));
   end CompositionMode_Destination;
   function CompositionMode_SourceIn return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_SourceIn"));
   end CompositionMode_SourceIn;
   function CompositionMode_DestinationIn return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_DestinationIn"));
   end CompositionMode_DestinationIn;
   function CompositionMode_SourceOut return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_SourceOut"));
   end CompositionMode_SourceOut;
   function CompositionMode_DestinationOut return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_DestinationOut"));
   end CompositionMode_DestinationOut;
   function CompositionMode_SourceAtop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_SourceAtop"));
   end CompositionMode_SourceAtop;
   function CompositionMode_DestinationAtop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_DestinationAtop"));
   end CompositionMode_DestinationAtop;
   function CompositionMode_Xor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Xor"));
   end CompositionMode_Xor;
   function CompositionMode_Plus return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Plus"));
   end CompositionMode_Plus;
   function CompositionMode_Multiply return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Multiply"));
   end CompositionMode_Multiply;
   function CompositionMode_Screen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Screen"));
   end CompositionMode_Screen;
   function CompositionMode_Overlay return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Overlay"));
   end CompositionMode_Overlay;
   function CompositionMode_Darken return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Darken"));
   end CompositionMode_Darken;
   function CompositionMode_Lighten return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Lighten"));
   end CompositionMode_Lighten;
   function CompositionMode_ColorDodge return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_ColorDodge"));
   end CompositionMode_ColorDodge;
   function CompositionMode_ColorBurn return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_ColorBurn"));
   end CompositionMode_ColorBurn;
   function CompositionMode_HardLight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_HardLight"));
   end CompositionMode_HardLight;
   function CompositionMode_SoftLight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_SoftLight"));
   end CompositionMode_SoftLight;
   function CompositionMode_Difference return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Difference"));
   end CompositionMode_Difference;
   function CompositionMode_Exclusion return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CompositionMode_Exclusion"));
   end CompositionMode_Exclusion;
   function RasterOp_SourceOrDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_SourceOrDestination"));
   end RasterOp_SourceOrDestination;
   function RasterOp_SourceAndDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_SourceAndDestination"));
   end RasterOp_SourceAndDestination;
   function RasterOp_SourceXorDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_SourceXorDestination"));
   end RasterOp_SourceXorDestination;
   function RasterOp_NotSourceAndNotDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_NotSourceAndNotDestination"));
   end RasterOp_NotSourceAndNotDestination;
   function RasterOp_NotSourceOrNotDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_NotSourceOrNotDestination"));
   end RasterOp_NotSourceOrNotDestination;
   function RasterOp_NotSourceXorDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_NotSourceXorDestination"));
   end RasterOp_NotSourceXorDestination;
   function RasterOp_NotSource return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_NotSource"));
   end RasterOp_NotSource;
   function RasterOp_NotSourceAndDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_NotSourceAndDestination"));
   end RasterOp_NotSourceAndDestination;
   function RasterOp_SourceAndNotDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_SourceAndNotDestination"));
   end RasterOp_SourceAndNotDestination;
   function RasterOp_NotSourceOrDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_NotSourceOrDestination"));
   end RasterOp_NotSourceOrDestination;
   function RasterOp_SourceOrNotDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_SourceOrNotDestination"));
   end RasterOp_SourceOrNotDestination;
   function RasterOp_ClearDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_ClearDestination"));
   end RasterOp_ClearDestination;
   function RasterOp_SetDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_SetDestination"));
   end RasterOp_SetDestination;
   function RasterOp_NotDestination return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CompositionMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RasterOp_NotDestination"));
   end RasterOp_NotDestination;
end QtAda6.QtGui.QPainter.CompositionMode;
