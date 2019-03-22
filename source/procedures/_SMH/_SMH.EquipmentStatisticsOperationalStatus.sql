create procedure "_SMH"."EquipmentStatisticsOperationalStatus"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @MinDate char(10),
  in @MaxDate char(10) ) 
result( 
  "Month" integer,
  "Year" integer,
  "OperationalStatus" char(10) ) 
begin
  call "SMH"."EquipmentStatisticsOperationalStatus"(@VesselId,@EquipmentId,@MinDate,@MaxDate)
end