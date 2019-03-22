create procedure "_SEAS"."ChemistryMessagingReplacementsList"()
result( 
  "ReplacementId" smallint,
  "ReplacementName" char(50),
  "ReplacementValue" long varchar ) 
begin
  call "SEAS"."ChemistryMessagingReplacementsList"()
end