create procedure "_SMH"."EquipmentStatisticsDateRange"( 
  in @VesselId integer,
  in @EquipmentId integer ) 
result( 
  "MinDate" char(10),
  "MaxDate" char(10) ) 
begin
  call "SMH"."EquipmentStatisticsDateRange"(@VesselId,@EquipmentId)
end