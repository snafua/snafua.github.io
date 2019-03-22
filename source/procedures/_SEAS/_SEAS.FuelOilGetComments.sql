create procedure "_SEAS"."FuelOilGetComments"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( "AnalystComments" long varchar,"SystemComments" long varchar,"LabComments" long varchar,"OilRating" char(10),"SystemPriority" char(20),"LabPriority" char(20) ) 
begin
  call "SEAS"."FuelOilGetComments"(@Vesselid,@EquipmentId,@TestResultId,@LabId,@SampleId)
end