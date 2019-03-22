create procedure "_LIT"."MaintenancePartsSourceList"()
result( 
  "SourceDB" char(50),
  "IsAvailable" bit,
  "HasVessels" bit ) 
begin
  call "LIT"."MaintenancePartsSourceList"()
end