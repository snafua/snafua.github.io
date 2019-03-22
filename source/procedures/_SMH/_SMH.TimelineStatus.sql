create procedure "_SMH"."TimelineStatus"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId bigint,
  in @ItemSubType char(50),
  in @ProcedureId integer ) 
result( "StateStartDate" char(23),"StateEndDate" char(23),"StateOpacity" char(4),"StateDescription" char(20) ) 
begin
  /*
2013.02.07  rbh added @procedureid

*/
  call "SMH"."TimelineStatus"(@VesselId,@EquipmentId)
end