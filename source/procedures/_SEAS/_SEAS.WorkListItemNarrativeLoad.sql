create function "_SEAS"."WorkListItemNarrativeLoad"( in @VesselId smallint,in @WorkRequestId integer ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "BASE64_ENCODE"("SEAS"."WorkListItemNarrativeLoad"(@VesselId,@WorkRequestId));
  return(@Result)
end