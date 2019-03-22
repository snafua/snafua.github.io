create procedure -- Procedure _PAV.TaskCodes.sql
-- RJM 2013-06-12 Populate Task Code dropdown on work package add/edit dialog
"_PAV"."TaskCodes"( 
  in @VesselId integer ) 
result( 
  "TaskCode" char(25),
  "TaskCodeDescription" char(128) ) 
begin
  call "PAV"."TaskCodes"(@VesselId)
end