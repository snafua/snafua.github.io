create procedure "_SEAS"."LubeOilGetComments"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "AnalystComments" long varchar,"SystemComments" long varchar,"LabComments" long varchar,"MetaRecord" char(6),"OilRating" char(10),"SystemPriority" char(20),"LabPriority" char(20) ) 
begin
  call "SEAS"."LubeOilGetComments"(@VesselId,@EquipmentId,@TestId,@LabId,@SampleId)
end