create procedure "_SEAS"."ChemistryMessagingReplacementsSave"( 
  in @ReplacementId smallint,
  in @ReplacementValue long varchar ) 
result( 
  "Success" bit ) 
begin
  call "SEAS"."ChemistryMessagingReplacementsSave"(@ReplacementId,@ReplacementValue)
end