create procedure "_PEM"."ProjectCodes"( 
  in @VesselId integer ) 
result( 
  "ProjectCode" char(25),
  "ProjectCodeDescription" char(128) ) 
begin
  call "PAV"."ProjectCodes"(@VesselId)
end