create procedure "_SMH"."EquipmentStatisticsRepairs"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @MinDate char(10),
  in @MaxDate char(10) ) 
result( 
  "Month" integer,
  "Year" integer,
  "Title" char(10),
  "ItemType" char(25),
  "HistoryId" bigint ) 
begin
  call "SMH"."EquipmentStatisticsRepairs"(@VesselId,@EquipmentId,@MinDate,@MaxDate)
end