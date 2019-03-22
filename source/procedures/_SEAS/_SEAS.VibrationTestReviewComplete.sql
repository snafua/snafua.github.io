create procedure "_SEAS"."VibrationTestReviewComplete"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "Success" bit,
  "Error" long varchar ) 
begin
  declare @Result bit;
  declare @Error long varchar;
  set @Result = 1;
  set @Error = 'No Error';
  call "SEAS"."VibrationTestReviewComplete"(@VesselId,@EquipmentId,@TestResultId,@Result,@Error);
  select @Result as "Success",
    @Error as "Error"
    from "DUMMY"
exception
  when others then
    set @Error = "ERRORMSG"();
    set @Result = 0;
    select @Result as "Success",
      @Error as "Error"
      from "DUMMY"
end