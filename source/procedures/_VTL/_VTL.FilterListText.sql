create procedure "_VTL"."FilterListText"()
result( 
  "SearchNumber" long varchar,
  "DocumentTitle" long varchar,
  "ManufacturerName" long varchar,
  "ModelNumber" long varchar,
  "AllText" long varchar ) 
begin
  call "VTL"."FilterListText"()
end