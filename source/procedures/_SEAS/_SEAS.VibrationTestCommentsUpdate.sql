create procedure "_SEAS"."VibrationTestCommentsUpdate"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @Comments long varchar ) 
result( 
  "Success" bit ) 
begin
  call "SEAS"."VibrationTestCommentsUpdate"(@VesselId,@EquipmentId,@TestResultId,@Comments);
  select 1 as "Success"
    from "DUMMY"
end