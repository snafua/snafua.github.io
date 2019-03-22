create procedure "_SMH"."TimelineRanges"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @HistoryItemId bigint,
  in @ItemSubType char(50),
  in @ProcedureId integer ) 
result( "RangeId" integer,"RangeDescription" char(50),"RangeColor" char(25),"RangeEntryStartDate" char(23),"RangeEntryEndDate" char(23),"RangeEntryDescription" char(50) ) 
begin
  /*
2013.02.07  rbh added @procedureid

*/
  call "SMH"."TimelineRanges"(@VesselId,@EquipmentId)
end