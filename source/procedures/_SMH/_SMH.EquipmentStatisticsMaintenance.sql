create procedure "_SMH"."EquipmentStatisticsMaintenance"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @MinDate char(10),
  in @MaxDate char(10) ) 
result( 
  "Id" integer,
  "Month" integer,
  "Year" integer,
  "Status" char(1),
  "Alarm" char(25),
  "ItemType" char(25),
  "HistoryId" bigint ) 
begin
  call "SMH"."EquipmentStatisticsMaintenance"(@VesselId,@EquipmentId,@MinDate,@MaxDate)
end