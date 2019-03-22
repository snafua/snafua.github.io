create procedure "_SMH"."FuelOilTestComments"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
result( "AnalystComments" long varchar ) 
begin
  call "SMH"."FuelOilTestComments"(@VesselId,@EquipmentId,@TestResultId)
end