create procedure "_SEAS"."ChemistryQuickMessageData"( 
  in @VesselId smallint ) 
result( 
  "MessageFrom" long varchar,
  "MessageTo" long varchar ) 
begin
  call "SEAS"."ChemistryQuickMessageData"(@VesselId)
end