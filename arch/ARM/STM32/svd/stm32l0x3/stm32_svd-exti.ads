--  This spec has been automatically generated from STM32L0x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.EXTI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  IMR_IM array
   type IMR_IM_Field_Array is array (0 .. 29) of Boolean
     with Component_Size => 1, Size => 30;

   --  Type definition for IMR_IM
   type IMR_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt30;
         when True =>
            --  IM as an array
            Arr : IMR_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for IMR_IM_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  Interrupt mask register (EXTI_IMR)
   type IMR_Register is record
      --  Interrupt Mask on line 0
      IM             : IMR_IM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#3#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      IM             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  EMR_EM array
   type EMR_EM_Field_Array is array (0 .. 29) of Boolean
     with Component_Size => 1, Size => 30;

   --  Type definition for EMR_EM
   type EMR_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt30;
         when True =>
            --  EM as an array
            Arr : EMR_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for EMR_EM_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   --  Event mask register (EXTI_EMR)
   type EMR_Register is record
      --  Event Mask on line 0
      EM             : EMR_EM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for EMR_Register use record
      EM             at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  RTSR_RT array
   type RTSR_RT_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for RTSR_RT
   type RTSR_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt23;
         when True =>
            --  RT as an array
            Arr : RTSR_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for RTSR_RT_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  Rising Trigger selection register (EXTI_RTSR)
   type RTSR_Register is record
      --  Rising trigger event configuration of line 0
      RT             : RTSR_RT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for RTSR_Register use record
      RT             at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  FTSR_FT array
   type FTSR_FT_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for FTSR_FT
   type FTSR_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt23;
         when True =>
            --  FT as an array
            Arr : FTSR_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for FTSR_FT_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  Falling Trigger selection register (EXTI_FTSR)
   type FTSR_Register is record
      --  Falling trigger event configuration of line 0
      FT             : FTSR_FT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for FTSR_Register use record
      FT             at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  SWIER_SWI array
   type SWIER_SWI_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for SWIER_SWI
   type SWIER_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt23;
         when True =>
            --  SWI as an array
            Arr : SWIER_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for SWIER_SWI_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  Software interrupt event register (EXTI_SWIER)
   type SWIER_Register is record
      --  Software Interrupt on line 0
      SWI            : SWIER_SWI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SWIER_Register use record
      SWI            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  PR_PIF array
   type PR_PIF_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for PR_PIF
   type PR_PIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIF as a value
            Val : HAL.UInt23;
         when True =>
            --  PIF as an array
            Arr : PR_PIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for PR_PIF_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  Pending register (EXTI_PR)
   type PR_Register is record
      --  Pending bit 0
      PIF            : PR_PIF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PR_Register use record
      PIF            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External interrupt/event controller
   type EXTI_Peripheral is record
      --  Interrupt mask register (EXTI_IMR)
      IMR   : aliased IMR_Register;
      pragma Volatile_Full_Access (IMR);
      --  Event mask register (EXTI_EMR)
      EMR   : aliased EMR_Register;
      pragma Volatile_Full_Access (EMR);
      --  Rising Trigger selection register (EXTI_RTSR)
      RTSR  : aliased RTSR_Register;
      pragma Volatile_Full_Access (RTSR);
      --  Falling Trigger selection register (EXTI_FTSR)
      FTSR  : aliased FTSR_Register;
      pragma Volatile_Full_Access (FTSR);
      --  Software interrupt event register (EXTI_SWIER)
      SWIER : aliased SWIER_Register;
      pragma Volatile_Full_Access (SWIER);
      --  Pending register (EXTI_PR)
      PR    : aliased PR_Register;
      pragma Volatile_Full_Access (PR);
   end record
     with Volatile;

   for EXTI_Peripheral use record
      IMR   at 16#0# range 0 .. 31;
      EMR   at 16#4# range 0 .. 31;
      RTSR  at 16#8# range 0 .. 31;
      FTSR  at 16#C# range 0 .. 31;
      SWIER at 16#10# range 0 .. 31;
      PR    at 16#14# range 0 .. 31;
   end record;

   --  External interrupt/event controller
   EXTI_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_Base;

end STM32_SVD.EXTI;
