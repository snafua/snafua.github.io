create procedure "_SEAS"."LubeOilTestsStandardEquipment"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9),in @Sort long varchar ) 
result( "VesselId" smallint,"VesselName" char(80),"EquipmentId" integer,"TestResultId" integer,"SamplePoint" char(50),"SPID" integer,"Lubricant" char(50),"Severity" char(20),"SeverityIndex" smallint,"SampleDate" char(16) ) 
begin
  call "SEAS"."LubeOilTestsStandardEquipment"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@Sort)
end