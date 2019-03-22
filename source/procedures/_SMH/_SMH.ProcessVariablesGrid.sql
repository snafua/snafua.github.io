create procedure "_SMH"."ProcessVariablesGrid"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId integer,
  in @ItemType char(50) default null,
  in @SORT long varchar default null ) 
result( 
  "ProcessTitle" char(50),
  "ProcessParameter" char(20),
  "ProcessTimestamp" timestamp,
  "ProcessValue" real,
  "ProcessId" integer ) 
begin
  call "SMH"."ProcessVariablesGrid"(@VesselId,@EquipmentId,@HistoryItemId,@ItemType,@SORT)
end