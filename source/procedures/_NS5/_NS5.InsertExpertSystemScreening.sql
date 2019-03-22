create procedure "_NS5"."InsertExpertSystemScreening"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,in @ExpertSystemTimeStamp char(26),in @VibResultExpertSystemScreening long varchar ) 
begin
  call "NS5"."InsertExpertSystemScreening"(@VesselId,@EquipmentId,@TestResultId,@ExpertSystemTimeStamp,@VibResultExpertSystemScreening)
end