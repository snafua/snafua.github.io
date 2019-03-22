create procedure -- Procedure _PAV.ProjectCodes.sql
-- RJM 2013-06-12 Populate Project Code dropdown on work package add/edit dialog
"_PAV"."ProjectCodes"( 
  in @VesselId integer ) 
result( 
  "ProjectCode" char(25),
  "ProjectCodeDescription" char(128) ) 
begin
  call "PAV"."ProjectCodes"(@VesselId)
end