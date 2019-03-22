create procedure "_SMH"."RepairHistoryNarrative"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer ) 
result( 
  "Narrative" long varchar ) 
begin
  select "BASE64_ENCODE"("SMH"."RepairHistoryNarrativeFormatted"(@VesselId,@EquipmentID,@MachineryHistoryId)) as "Narrative"
    from "DUMMY"
end