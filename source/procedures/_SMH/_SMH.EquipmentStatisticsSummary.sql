create procedure "_SMH"."EquipmentStatisticsSummary"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @MinDate char(10) default null,
  in @MaxDate char(10) default null ) 
result( 
  "EquipmentName" char(128),
  "Completion" char(10),
  "Compliance" char(10),
  "MTBR" char(10) ) 
begin
  call "SMH"."EquipmentStatisticsSummary"(@VesselId,@EquipmentId)
end