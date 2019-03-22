create procedure "_SWA"."RepairFORACs"()
result( 
  "FORAC" char(20) ) 
begin
  call "SWA"."RepairFORACs"()
end