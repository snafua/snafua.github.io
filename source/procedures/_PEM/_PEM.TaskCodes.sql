create procedure "_PEM"."TaskCodes"( 
  in @VesselId integer ) 
result( 
  "TaskCode" char(25),
  "TaskCodeDescription" char(128) ) 
begin
  call "PAV"."TaskCodes"(@VesselId)
end