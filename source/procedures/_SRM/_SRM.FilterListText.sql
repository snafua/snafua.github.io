create procedure "_SRM"."FilterListText"()
result( 
  "ServiceRequestExternalId" long varchar,
  "ServiceRequestTitle" long varchar,
  "POC" long varchar,
  "AllText" long varchar ) 
begin
  call "SRM"."FilterListText"()
end