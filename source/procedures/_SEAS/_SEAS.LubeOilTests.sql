create procedure "_SEAS"."LubeOilTests"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "TestResultId" integer,"MeasurementPointId" integer,"TestDate" timestamp,"LabId" char(8),"SampleId" char(9),"VariableId" integer,"OilValue" char(20),"AlertStatus" smallint,"AlertValue" char(50),"Priority" char(20),"LubeOilVariableCategory" char(50),"LubeOilVariableLabel" char(50),"IsUnanalyzed" bit,"IncludeInMessage" bit,"DisplaySequence" integer ) 
begin
  call "SEAS"."LubeOilTests"(@VesselId,@EquipmentId,@TestId,@LabId,@SampleId)
end