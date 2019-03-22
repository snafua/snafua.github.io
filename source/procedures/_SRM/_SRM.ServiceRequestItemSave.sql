create procedure --JLD
"_SRM"."ServiceRequestItemSave"( 
  in @RowId char(1024),
  in @ParentRowId char(1024),
  in @OfficeCodeId integer,
  in @AssignedToUserId integer,
  in @ServiceRequestStatus char(25),
  in @ServiceRequestPriority tinyint,
  in @ServiceRequestTitle char(128),
  in @ServiceRequestPrelimDueDate date default null,
  in @ServiceRequestFinalDueDate date default null,
  in @PlannedStartDate date default null,
  in @PlannedEndDate date default null,
  in @PercentComplete integer default null,
  in @EstimatedRemainingHours numeric(12,2) default null,
  in @ActualHoursWorked numeric(12,2) default null,
  in @MandatoryMinReportDays integer default null,
  in @ServiceRequestDescription long varchar default null,
  in @TransaltNumber char(25) default null,
  in @TransaltId integer default null,
  in @PrimaryPOCID integer default null,
  in @PrimaryPOCLastname char(128) default null,
  in @PrimaryPOCFirstname char(128) default null,
  in @PrimaryPOCEmails varchar(500) default null,
  in @PrimaryPOCPhoneNumber char(20) default null,
  in @AltPOCID integer default null,
  in @AltPOCLastname char(128) default null,
  in @AltPOCFirstname char(128) default null,
  in @AltPOCEmails varchar(500) default null,
  in @AltPOCPhoneNumber char(20) default null,
  in @ServiceRequestDeliverables long varchar default null,
  in @ServiceRequestCategories long varchar default null,
  in @ServiceRequestRequiredApprovals long varchar default null,
  in @ServiceRequestRequiredDetails long varchar default null,
  in @VesselIds long varchar default null,
  in @EstimatedTotalHours numeric(12,2) default null,
  in @Base64Encoded bit default 1 ) 
result( 
  "RowId" char(1024),
  "RowIdChild" char(1024),
  "TitleBarDisplayChild" char(128),
  "ServiceRequestExternalId" char(128),
  "Success" bit,
  "SRMMessage" long varchar,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-06-15 RJM added ServiceRequestExternalId to results
2017-12-01 RJM Encoded @ErrorMessage as SRMMessage
2018-08-14 JHM Added @Base64Encoded
2018-08-15 JHM Added ErrorMessage to fix backwards compatibility issues
*/
  if(@Base64Encoded is null) then
    set @Base64Encoded = 1
  end if;
  call "SRM"."ServiceRequestItemSave"(
  @RowId,
  @ParentRowId,
  @OfficeCodeId,
  @AssignedToUserId,
  @ServiceRequestStatus,
  @ServiceRequestPriority,
  @ServiceRequestTitle,
  @ServiceRequestPrelimDueDate,
  @ServiceRequestFinalDueDate,
  @PlannedStartDate,
  @PlannedEndDate,
  @PercentComplete,
  @EstimatedRemainingHours,
  @ActualHoursWorked,
  @MandatoryMinReportDays,
  @ServiceRequestDescription,
  @TransaltNumber,
  @TransaltId,
  @PrimaryPOCID,
  @PrimaryPOCLastname,
  @PrimaryPOCFirstname,
  @PrimaryPOCEmails,
  @PrimaryPOCPhoneNumber,
  @AltPOCID,
  @AltPOCLastname,
  @AltPOCFirstname,
  @AltPOCEmails,
  @AltPOCPhoneNumber,
  @ServiceRequestDeliverables,
  @ServiceRequestCategories,
  @ServiceRequestRequiredApprovals,
  @ServiceRequestRequiredDetails,
  @VesselIds,
  @EstimatedTotalHours,
  @Base64Encoded)
end