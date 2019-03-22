create procedure "_PEM"."PortEngineers"()
result( 
  "PortEngineerId" integer,
  "PersonFullName" char(128),
  "PortEngineerCode" char(128),
  "TelephoneNumberFull" char(23) ) 
begin
  call "PEM"."PortEngineers"()
end