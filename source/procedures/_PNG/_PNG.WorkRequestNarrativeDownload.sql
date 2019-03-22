create function "_PNG"."WorkRequestNarrativeDownload"( 
  in @VesselId smallint,
  in @WorkRequestId integer default null ) 
returns long binary
begin
  return "PNG"."WorkRequestNarrativeDownload"(@VesselId,@WorkRequestId)
end