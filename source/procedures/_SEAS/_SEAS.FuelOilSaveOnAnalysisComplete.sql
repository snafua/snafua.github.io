create procedure "_SEAS"."FuelOilSaveOnAnalysisComplete"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9),
  in @AnalystComments long varchar,
  in @Priority char(20),
  in @DontAskAgain bit ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilSaveOnAnalysisComplete"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@AnalystComments,@Priority,@DontAskAgain)
end