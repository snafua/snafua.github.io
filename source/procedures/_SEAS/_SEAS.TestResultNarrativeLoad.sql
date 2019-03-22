create function "_SEAS"."TestResultNarrativeLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "BASE64_ENCODE"("SEAS"."TestResultNarrativeLoad"(@VesselId,@EquipmentId,@TestResultId));
  return(@Result)
end