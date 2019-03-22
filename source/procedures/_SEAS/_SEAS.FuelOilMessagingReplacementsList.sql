create procedure "_SEAS"."FuelOilMessagingReplacementsList"( 
  in @Sort long varchar ) 
result( 
  "ReplacementId" integer,
  "ReplacementName" char(50),
  "ReplacementValue" char(1000) ) 
begin
  call "SEAS"."FuelOilMessagingReplacementsList"(@Sort)
end