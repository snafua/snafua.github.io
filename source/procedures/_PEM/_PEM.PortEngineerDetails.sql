create procedure "_PEM"."PortEngineerDetails"( 
  in @PersonId integer ) 
result( 
  "PortEngineerCode" char(128),
  "TelephoneNumberFull" char(23) ) 
begin
  call "PNG"."PortEngineerDetails"(@PersonId)
end