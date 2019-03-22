create procedure "_TAE"."QuickEditSave"( 
  in @RowId char(1024),
  in @AvailabilityId integer,
  in @WorkPackageId integer,
  in @WorkItemNumber char(25) ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAE"."QuickEditSave"(@RowId,@AvailabilityId,@WorkPackageId,@WorkItemNumber)
end