create procedure "_TAE"."TransaltCloseOutSave"( 
  in @RowId char(1024),
  in @AvailabilityId integer,
  in @WorkPackageId integer,
  in @WorkItemId integer ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAE"."TransaltCloseOutSave"(@RowId,@AvailabilityId,@WorkPackageId,@WorkItemId)
end