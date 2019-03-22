create procedure "_SWA"."VesselBilletAssignments"( 
  in @RowIds long varchar ) 
result( 
  "Billet" char(240),
  "BilletId" integer ) 
begin
  call "SWA"."VesselBilletAssignments"(@RowIds)
end