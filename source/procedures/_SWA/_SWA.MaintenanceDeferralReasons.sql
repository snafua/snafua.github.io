create procedure "_SWA"."MaintenanceDeferralReasons"()
result( 
  "MaintenanceDeferralReason" char(20) ) 
begin
  call "SWA"."MaintenanceDeferralReasons"()
end