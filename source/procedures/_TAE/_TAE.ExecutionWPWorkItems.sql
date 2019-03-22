create procedure "_TAE"."ExecutionWPWorkItems"( 
  in @RowId char(1024),
  in @AvailabilityId integer,
  in @WorkPackageId integer,
  in @WorkItemId integer default null ) 
result( 
  "WorkItemId" integer,
  "WorkItemDescription" char(256),
  "WorkItemNumber" char(256) ) 
begin
  /*
2018-03-19 JLD E-03794 Updated WorkItemNumber to return 'WI# - Title'
*/
  call "TAE"."ExecutionWPWorkItems"(@RowId,@AvailabilityId,@WorkPackageId,@WorkItemId)
end