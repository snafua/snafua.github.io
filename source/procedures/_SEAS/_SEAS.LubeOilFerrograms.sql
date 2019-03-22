create procedure "_SEAS"."LubeOilFerrograms"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "TestId" integer,"FerrogramId" integer,"FerrogramLabel" char(20),"FerrogramDescription" char(50),"FerrogramDate" timestamp ) 
begin
  call "SEAS"."LubeOilFerrograms"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end