create procedure "_SRM"."ServiceRequestsQuickEditDetails"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "ServiceRequestId" integer,
  "ServiceRequestExternalId" char(20),
  "OfficeCodeId" integer,
  "OfficeCode" char(10),
  "AssignedToUserId" integer,
  "AssignedToUserFullName" char(256),
  "ServiceRequestStatus" char(25),
  "ServiceRequestPriority" tinyint,
  "ServiceRequestPriorityDisplay" char(25),
  "PlannedStartDate" date,
  "PlannedEndDate" date,
  "PercentComplete" integer,
  "PercentHoursComplete" integer,
  "PercentTimeComplete" integer,
  "EstimatedRemainingHours" numeric(12,2),
  "ActualHoursWorked" numeric(12,2),
  "EstimatedTotalHours" numeric(12,2),
  "CanEditDescription" bit,
  "CanEditStatus" bit,
  "CanAddSupportItem" bit,
  "CanEditProgress" bit,
  "CanEditAttachment" bit,
  "CanEditMilestones" bit,
  "CanEditUserProfile" bit,
  "CanEditBranchProfile" bit,
  "CanEditTeamSpace" bit,
  "LastMileStone" char(80),
  "ActiveSequenceNumber" tinyint ) 
begin call "SRM"."ServiceRequestsQuickEditDetails"(@RowId)
end