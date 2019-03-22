create function "_SEAS"."LubeOilFerrogramData"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9),in @FerrogramId integer ) 
returns long binary
begin
  declare @Result long binary;
  set @Result = "SEAS"."LubeOilFerrogramData"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@FerrogramId);
  return(@Result)
end