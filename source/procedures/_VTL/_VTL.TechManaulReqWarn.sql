create procedure "_VTL"."TechManaulReqWarn"()
result( 
  "WarningMessage" long varchar ) 
begin
  call "VTL"."TechManaulReqWarn"()
end