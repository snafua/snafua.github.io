create procedure "_SRM"."TeamMessageGroups"( 
  in @NodeId char(1024) default null,
  in @ServiceRequestExternalID char(20) default null,
  in @AllTextSearchString long varchar default null,
  in @NumberOfDaysToDisplay integer default 30,
  in @OrderBy char(512) default null,
  in @UsePaging bit default 1,
  in @RowsPerPage integer default 500,
  in @PageToDisplay integer default 1 ) 
result( "RowId" char(1024),"ServiceRequestId" integer,"ServiceRequestParentId" integer,"OriginalServiceRequestId" integer,"ServiceRequestNestedLevel" tinyint,"ServiceRequestExternalId" char(20),"ServiceRequestType" char(10),"TitleBarDisplay" char(128),"ServiceRequestDate" date,"ServiceRequestOriginator" integer,"ServiceRequestOriginatorName" char(256),"OfficeCodeId" integer,"OfficeCode" char(10),"AssignedToUserId" integer,"AssignedToUserFullName" char(256),"ServiceRequestStatus" char(25),"ServiceRequestPriority" tinyint,"ServiceRequestPriorityDisplay" char(25),"ServiceRequestTitle" char(128),"ServiceRequestPrelimDueDate" date,"ServiceRequestFinalDueDate" date,"PlannedStartDate" date,"PlannedEndDate" date,"PercentComplete" integer,"PercentHoursComplete" integer,"PercentTimeComplete" integer,"EstimatedRemainingHours" numeric(12,2),"ActualHoursWorked" numeric(12,2),"EstimatedTotalHours" numeric(12,2),"MandatoryMinReportDays" integer,"TransaltNumber" char(25),"TransaltId" integer,"PrimaryPOCID" integer,"PrimaryPOCName" char(256),"PrimaryPOCEmail" varchar(500),"PrimaryPOCPhone" char(20),"AltPOCID" integer,"AltPOCName" char(256),"AltPOCEmail" varchar(500),"AltPOCPhone" char(20),"ServiceRequestDeliverables" long varchar,"ServiceRequestCategories" long varchar,"ServiceRequestRequiredApprovals" long varchar,"ServiceRequestRequiredDetails" long varchar,"VesselIds" long varchar,"VesselNames" long varchar,"ServiceRequestParentExternalId" char(20),"OriginalServiceRequestExternalId" char(20),"TotalRows" integer,"CurrentPage" integer,"TotalPages" integer,"NumberofUnreadItems" integer,"MostRecentMessage" timestamp ) 
begin
  call "SRM"."TeamMessageGroups"(
  @NodeId,
  @ServiceRequestExternalID,
  @AllTextSearchString,
  @NumberOfDaysToDisplay,
  @OrderBy,
  @UsePaging,
  @RowsPerPage,
  @PageToDisplay)
end