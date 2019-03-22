create procedure "_SRM"."ServiceRequestSupportItemSave"( 
  in @RowId char(1024),
  in @ParentRowId char(1024),
  in @ServiceRequestTitle char(128) default null,
  in @ServiceRequestPriority tinyint default null,
  in @OfficeCodeId integer default null,
  in @AssignedToUserId integer default null,
  in @VesselIds long varchar default null,
  in @PlannedStartDate date default null,
  in @PlannedEndDate date default null,
  in @EstimatedRemainingHours numeric(12,2) default null,
  in @ServiceRequestDescription long varchar default null ) 
result( 
  "RowId" char(1024),
  "TitleBarDisplay" char(128),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."ServiceRequestSupportItemSave"(
  @RowId,
  @ParentRowId,
  @ServiceRequestTitle,
  @ServiceRequestPriority,
  @OfficeCodeId,
  @AssignedToUserId,
  @VesselIds,
  @PlannedStartDate,
  @PlannedEndDate,
  @EstimatedRemainingHours,
  @ServiceRequestDescription)
end