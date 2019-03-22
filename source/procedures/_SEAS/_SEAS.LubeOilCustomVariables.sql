create procedure "_SEAS"."LubeOilCustomVariables"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "VariableId" integer,"VariableCategory" char(50),"VariableLabel" char(20),"IsCustom" bit ) 
begin
  call "SEAS"."LubeOilCustomVariables"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end