create function "_SMH"."MachineryHistoryNarrativeLoad"( 
  in @VesselId smallint,
  in @MachineryHistoryId integer ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "BASE64_ENCODE"("SMH"."MachineryHistoryNarrativeLoad"(@VesselId,@MachineryHistoryId));
  return(@Result)
end