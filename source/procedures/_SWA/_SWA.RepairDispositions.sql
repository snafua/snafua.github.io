create procedure "_SWA"."RepairDispositions"()
result( 
  "Disposition" char(20) ) 
begin
  call "SWA"."RepairDispositions"()
end