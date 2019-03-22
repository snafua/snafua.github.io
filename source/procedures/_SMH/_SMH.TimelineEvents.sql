create procedure "_SMH"."TimelineEvents"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId bigint,
  in @ItemSubType char(50),
  in @ProcedureId integer ) 
result( "EventTimestamp" char(23),"EventClass" char(23),"EventDescription" char(50) ) 
begin
  /*
2013.02.07  rbh added @procedureid

*/
  call "SMH"."TimelineEvents"(@VesselId,@EquipmentId,@ItemSubType)
end