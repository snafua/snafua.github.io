create procedure "_SWA"."WorkRequestComplete"( 
  in @RowId char(1024),
  in @CompletionComment long varchar default 'No Details Provided.' ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."WorkRequestComplete"(@VesselId,@WorkRequestId,@CompletionComment)
end