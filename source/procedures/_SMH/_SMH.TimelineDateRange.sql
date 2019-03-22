create procedure "_SMH"."TimelineDateRange"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId bigint,
  in @ItemSubType char(50),
  in @ProcedureId integer ) 
result( "StartDate" char(23),"EndDate" char(23) ) 
begin
  /*
2013.02.07  rbh added @procedureid

*/
  call "SMH"."TimelineDateRange"(@VesselId,@EquipmentId)
end