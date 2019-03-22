create procedure "_SEAS"."LubeOilFerrogram"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9),in @FerrogramId integer ) 
result( "FerrogramFileName" char(20),"FerrogramFileSize" integer ) 
begin
  call "SEAS"."LubeOilFerrogram"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@FerrogramId)
end