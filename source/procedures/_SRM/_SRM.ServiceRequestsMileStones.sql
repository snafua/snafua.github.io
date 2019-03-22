create procedure "_SRM"."ServiceRequestsMileStones"( in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "ServiceRequestId" integer,
  "ServiceRequestMilestoneId" smallint,
  "ServiceRequestMilestoneDescription" char(80),
  "ServiceRequestMilestoneScheduledDate" date,
  "ServiceRequestMilestoneCompleteDate" date ) 
begin
  call "SRM"."ServiceRequestsMileStones"(@RowId)
end