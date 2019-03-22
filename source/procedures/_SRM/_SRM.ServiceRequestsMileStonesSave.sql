create procedure "_SRM"."ServiceRequestsMileStonesSave"( in @RowId char(1024),
  in @ServiceRequestMilestoneScheduledDate date,
  in @ServiceRequestMilestoneCompleteDate date ) 
result( "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."ServiceRequestsMileStonesSave"(@RowId,@ServiceRequestMilestoneScheduledDate,@ServiceRequestMilestoneCompleteDate)
end