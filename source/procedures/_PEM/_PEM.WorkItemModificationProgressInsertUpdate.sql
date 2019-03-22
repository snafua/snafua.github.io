create procedure "_PEM"."WorkItemModificationProgressInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @ProgressDate date,
  in @Progress integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationProgressInsertUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@ProgressDate,@Progress)
end