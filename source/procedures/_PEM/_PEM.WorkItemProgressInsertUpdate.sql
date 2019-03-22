create procedure "_PEM"."WorkItemProgressInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @ProgressDate date,
  in @Progress integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemProgressInsertUpdate"(@VesselId,@WorkItemId,@ProgressDate,@Progress)
end