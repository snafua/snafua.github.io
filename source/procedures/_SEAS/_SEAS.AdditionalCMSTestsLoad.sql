create procedure "_SEAS"."AdditionalCMSTestsLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9),in @Sort long varchar default '7 DESC',
  in @MaxResults integer default null ) 
result( "VesselId" smallint,"EquipmentId" integer,"TestResultId" integer,"VesselName" char(80),"EquipmentDescription" char(80),"TestTypeDescription" char(15),"Timestamp" timestamp,"Priority" char(20) ) 
begin
  call "SEAS"."AdditionalCMSTestsLoad"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@Sort,@MaxResults)
end