create procedure "_SEAS"."LubeOilSaveAnalysis"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9),in @AnalystComments long varchar,in @Priority char(20) ) 
begin
  call "SEAS"."LubeOilSaveAnalysis"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@AnalystComments,@Priority)
end