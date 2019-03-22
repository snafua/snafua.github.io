create procedure "_SMH"."AdditionalCMSTestsLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @Sort long varchar default '7 DESC',
  in @MaxResults integer default null ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "TestResultId" integer,
  "VesselName" char(80),
  "EquipmentDescription" char(80),
  "ItemType" char(20),
  "ItemSubType" char(20),
  "TestTimestamp" timestamp,
  "Priority" char(20),
  "Comments" long varchar ) 
begin
  call "SMH"."AdditionalCMSTestsLoad"(@VesselId,@EquipmentId,@TestResultId,@Sort,@MaxResults)
end