create procedure "_SEAS"."LubeOilSaveOnAnalysisComplete"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9),in @AnalysisComments long varchar,in @Priority char(20),in @DontAskAgain bit ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilSaveOnAnalysisComplete"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@AnalysisComments,@Priority,@DontAskAgain)
end