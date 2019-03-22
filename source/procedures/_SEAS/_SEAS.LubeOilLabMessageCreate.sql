create procedure "_SEAS"."LubeOilLabMessageCreate"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "MessageFrom" char(255),"MessageTo" char(255),"MessageSubject" long varchar,"MessageText" long varchar ) 
begin
  call "SEAS"."LubeOilLabMessageCreate"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end