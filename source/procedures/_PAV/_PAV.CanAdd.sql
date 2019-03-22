create procedure -- Procedure _PAV.CanAdd.sql
-- RJM 2013-06-12 Returns 1 until rules implemented
"_PAV"."CanAdd"()
result( 
  "AvailabilityCanAdd" bit,
  "WorkPackageCanAdd" bit,
  "WorkItemCanAdd" bit,
  "ServiceOrderCanAdd" bit ) 
begin
  call "PAV"."CanAdd"()
end