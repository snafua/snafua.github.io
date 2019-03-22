create procedure "_SRM"."ServiceRequestsQuickEditSave"( in @RowId char(1024),
  in @OfficeCodeId integer,
  in @AssignedToUserId integer,
  in @ServiceRequestStatus char(25),
  in @ServiceRequestPriority tinyint,
  in @PercentComplete tinyint,
  in @PlannedStartDate date,
  in @EstimatedRemainingHours numeric(12,2),
  in @ActualHoursWorked numeric(12,2),
  in @PlannedEndDate date,
  in @ServiceRequestComment long varchar ) 
result( 
  "RowId" char(1024),
  "RowIdChild" char(1024),
  "TitleBarDisplayChild" char(128),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."ServiceRequestsQuickEditSave"(@RowId,@OfficeCodeId,@AssignedToUserId,@ServiceRequestStatus,@ServiceRequestPriority,@PercentComplete,@PlannedStartDate,@EstimatedRemainingHours,@ActualHoursWorked,@PlannedEndDate,@ServiceRequestComment)
end