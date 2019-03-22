create procedure "_SEAS"."ChemistryMessagingEmailsSave"( 
  in @VesselId smallint,
  in @VesselEmails long varchar ) 
result( 
  "Succes" bit ) 
begin
  call "SEAS"."ChemistryMessagingEmailsSave"(@VesselId,@VesselEmails)
end