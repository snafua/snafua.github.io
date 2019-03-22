create procedure "_TAE"."QuickEditDetails"( 
  in @RowId char(1024) ) 
result( 
  "Caption" char(256),
  "AvailabilityId" char(20), -- was INTEGER,
  "Availability" char(256),
  "AvailabilityEnabled" bit,
  "WorkPackageId" char(20), --was INTEGER,
  "WorkPackage" char(256),
  "WorkPackageEnabled" bit,
  "WorkItemNumber" char(25),
  "WorkItemNumberEnabled" bit,
  "Comments" long varchar,
  "CommentsEnabled" bit,
  "WorkItemId" integer,
  "CanReschedule" bit,
  "WorkItemDescription" char(256) ) 
begin
  /*
2016-06-27 RJM Added workItemId to result set
2016-07-21 Added CanReschedule
2017-04-28 RJM Updated WorkItemNumber to CHAR(25)
2018-02-01 E-03794 JLD Return WorkItemDescription
*/
  call "TAE"."QuickEditDetails"(@RowId)
end