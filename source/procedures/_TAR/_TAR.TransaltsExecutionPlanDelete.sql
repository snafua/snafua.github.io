create procedure "_TAR"."TransaltsExecutionPlanDelete"( in @RowId char(1024) ) 
result( "RowId" char(1024),
  "VesselId" integer,
  "Transaltid" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltsExecutionPlanDelete"(@RowId)
end