create procedure "_SMH"."EquipmentStatisticsMaintenanceProcedures"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @MinDate char(10),
  in @MaxDate char(10) ) 
result( 
  "Id" integer,
  "Type" char(25),
  "Title" char(128),
  "Interval" char(20),
  "Completion" char(10) ) 
begin
  call "SMH"."EquipmentStatisticsMaintenanceProcedures"(@VesselId,@EquipmentId,@MinDate,@MaxDate)
end