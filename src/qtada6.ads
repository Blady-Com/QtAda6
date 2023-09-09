-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 glue for the generated files
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py;
with Interfaces.C;
with UXStrings;
with UXStrings.Conversions;

package QtAda6 is

   type type_K_T is tagged record
      Python_Proxy : Py.Handle;
   end record;
   type Property is tagged record
      Python_Proxy : Py.Handle;
   end record;
   type Callable is null record;
   type Any is tagged record
      Python_Proxy : Py.Handle;
   end record;
   type None is null record;
   type Iterable is null record;
   type Tuple is null record;

   subtype bool is Boolean;
   function Image is new UXStrings.Conversions.Scalar_Image (bool);
   subtype int is Interfaces.C.long;
   function Image is new UXStrings.Conversions.Integer_Image (int);
   subtype float is Interfaces.C.double;
   function Image is new UXStrings.Conversions.Floating_Point_Image (float);
   subtype str is UXStrings.UXString;
   type bytes is new UXStrings.UTF_8_Character_Array;
   type bytearray is new UXStrings.UTF_8_Character_Array;

   function From_bytes (Item : bytes) return UXStrings.UXString is
     (UXStrings.From_UTF_8 (UXStrings.UTF_8_Character_Array (Item)));

   function As_String (Object : Py.Handle) return UXStrings.UXString is (UXStrings.From_UTF_8 (Py.As_String (Object)));
   function Unicode_FromString (Value : UXStrings.UXString) return Py.Handle is
     (Py.Unicode_FromString (UXStrings.To_UTF_8 (Value)));

   package Shiboken is
      type Enum is tagged record
         Python_Proxy : Py.Handle;
      end record;
      type Object is tagged record
         Python_Proxy : Py.Handle;
      end record;
   end Shiboken;

   type Object is new Shiboken.Object with null record;

   package shibokensupport is
      package signature is
         package mapping is
            type ArrayLikeVariable is new UXStrings.Latin_1_Character_Array;
            ArrayLikeVariable_conv_A2P_is_not_supported : Py.Handle;
         end mapping;
      end signature;
   end shibokensupport;

   type_K_T_conv_P2A_is_not_supported : type_K_T;
   Tuple_conv_P2A_is_not_supported    : constant Tuple    := (null record);
   Any_conv_P2A_is_not_supported      : Any;
   Iterable_conv_P2A_is_not_supported : constant Iterable := (null record);

   Any_conv_A2P_is_not_supported      : Py.Handle;
   type_K_T_conv_A2P_is_not_supported : Py.Handle;
   Callable_conv_A2P_is_not_supported : Py.Handle;
   None_conv_A2P_is_not_supported     : Py.Handle;
   Iterable_conv_A2P_is_not_supported : Py.Handle;

   function QtCore_Python_Proxy return Py.Handle;
   function QtGui_Python_Proxy return Py.Handle;
   function QtWidgets_Python_Proxy return Py.Handle;

   function Version return UXStrings.UXString;

   procedure Initialize;
   procedure Finalize;

end QtAda6;
