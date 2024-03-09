-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qwizardpage.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QWizard.WizardButton;
with QtAda6.QtWidgets.QWizard.WizardPixmap;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtWidgets.QWizard;
package body QtAda6.QtWidgets.QWizardPage is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function completeChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "completeChanged"));
   end completeChanged;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizardPage");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function buttonText
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttonText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end buttonText;
   procedure cleanupPage (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cleanupPage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cleanupPage;
   function field (self : access Inst; name_P : str) return Any is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "field");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end field;
   procedure initializePage (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initializePage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initializePage;
   function isCommitPage (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCommitPage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isCommitPage;
   function isComplete (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isComplete");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isComplete;
   function isFinalPage (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFinalPage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isFinalPage;
   function nextId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nextId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end nextId;
   function pixmap
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardPixmap.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   procedure registerField
     (self : access Inst; name_P : str; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; property_P : bytes := "";
      changedSignal_P : bytes := "")
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registerField");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if property_P /= "" then
         Dict_SetItemString (Dict, "property", Bytes_FromString (String (property_P)));
      end if;
      if changedSignal_P /= "" then
         Dict_SetItemString (Dict, "changedSignal", Bytes_FromString (String (changedSignal_P)));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end registerField;
   procedure setButtonText
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setButtonText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setButtonText;
   procedure setCommitPage (self : access Inst; commitPage_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCommitPage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (commitPage_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCommitPage;
   procedure setField (self : access Inst; name_P : str; value_P : Any) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setField");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setField;
   procedure setFinalPage (self : access Inst; finalPage_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFinalPage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (finalPage_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFinalPage;
   procedure setPixmap
     (self     : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardPixmap.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPixmap;
   procedure setSubTitle (self : access Inst; subTitle_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSubTitle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (subTitle_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSubTitle;
   procedure setTitle (self : access Inst; title_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTitle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (title_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTitle;
   function subTitle (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subTitle");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end subTitle;
   function title (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "title");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end title;
   function validatePage (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "validatePage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end validatePage;
   function wizard (self : access Inst) return access QtAda6.QtWidgets.QWizard.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWizard.Class := new QtAda6.QtWidgets.QWizard.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "wizard");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end wizard;
end QtAda6.QtWidgets.QWizardPage;
