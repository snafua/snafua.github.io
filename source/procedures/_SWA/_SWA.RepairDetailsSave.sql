create procedure "_SWA"."RepairDetailsSave"( 
  in @RowId char(1024) default null,
  in @VesselId integer,
  in @Title char(50),
  in @RepairNumberPrefix char(10),
  in @RepairNumberSuffix char(10),
  in @RAC integer default null,
  in @RepairStatus char(10) default null,
  in @Priority char(1) default null,
  in @SourceId integer default null,
  in @SubTypeId integer default null,
  in @CASREPID char(5) default null,
  in @CRatingId integer default null,
  in @Abstract long varchar default null,
  in @Notes long varchar default null,
  in @QA long varchar default null,
  in @StatementOfWork long varchar default null,
  in @StartDate date default null,
  in @CompleteDate date default null,
  in @DepartmentId integer default null,
  in @WorkRequestReferenceId integer default null,
  in @BilletNodeId char(1024) default null,
  in @EstimatedLaborHours numeric(6,2) default null,
  in @ActualLaborHours numeric(6,2) default null,
  in @CloseOutNotes long varchar default null,
  in @ShoresideStatus char(10) default null,
  in @Disposition char(20) default null,
  in @FORAC char(20) default null,
  in @ResponseDate date default null,
  in @ShoresideCompletionDate date default null,
  in @AvailabilityId integer default null,
  in @ContractId integer default null,
  in @WorkItemId integer default null,
  in @PEComments long varchar default null,
  in @RepairType char(10) default null,
  in @EquipmentId integer default null,
  in @HistoryItemId integer default null,
  in @TestResultId integer default null,
  in @TransaltId integer default null ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-05-26 RJM
2018-10-11 RJM  Transalt Assoc. E-03401 B-19455
2019-02-11 AIM E-04954 B-20865 Added @RAC
*/
  declare @WorkRequestId integer;
  declare @BilletId integer;
  declare @RepairNumber char(10);
  set @RepairNumber = "STRING"(@RepairNumberPrefix,'-',@RepairNumberSuffix);
  if("ECO"."CheckNull"(@RepairStatus) is null) then
    set @RepairStatus = 'Draft'
  end if;
  if("ECO"."CheckNull"(@Priority) is null) then
    set @Priority = 'C'
  end if;
  if(@StartDate is null) then
    set @StartDate = current utc timestamp
  end if;
  if("ECO"."CheckNull"(@BilletNodeId) is not null) then
    set @BilletId = "SWA"."KeyValuePairParse"(@BilletNodeId,'BilletId')
  end if;
  if("ECO"."CheckNull"(@RowId) is not null) then
    set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
    if(@VesselId is null) then
      set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
    end if
  end if;
  call "SWA"."RepairDetailsSave"(@VesselId,@Title,@RepairNumber,@RAC,@RepairStatus,@Priority,@SourceId,@SubTypeId,@StartDate,@Abstract,
  @WorkRequestReferenceId,@CASREPID,@CRatingId,@Notes,@QA,@StatementOfWork,@CompleteDate,@DepartmentId,@BilletId,@EstimatedLaborHours,
  @ActualLaborHours,@CloseOutNotes,@ShoresideStatus,@Disposition,@FORAC,@ResponseDate,@ShoresideCompletionDate,@AvailabilityId,@ContractId,
  @WorkItemId,@PEComments,@RepairType,@WorkRequestId,@EquipmentId,@HistoryItemId,@TestResultId,@TransaltId)
end