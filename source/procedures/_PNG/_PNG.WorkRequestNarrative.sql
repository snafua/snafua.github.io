create procedure "_PNG"."WorkRequestNarrative"( 
  in @VesselId integer,
  in @WorkRequestId integer ) 
result( 
  "WRNarrative" long varchar ) 
begin
  call "PNG"."WorkRequestNarrative"(@VesselID,@WorkRequestId)
end