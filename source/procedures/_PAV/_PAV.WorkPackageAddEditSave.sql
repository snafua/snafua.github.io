create procedure "_PAV"."WorkPackageAddEditSave"( 
  in @VesselId integer,
  in @AvailabilityId integer,
  in @ContractNumber char(25),
  in @PortEngineerId integer,
  in @PortEngineerName char(128),
  in @ContractBeginDate date,
  in @ContractEndDate date,
  in @FundingCodes long varchar,
  in @ContractId integer default null,
  in @ContractAwardDate char(25) default null,
  in @ContractorId integer default null,
  in @ContractLocationId integer default null,
  in @Module char(25) default 'Availabilities' ) 
result( 
  "RowId" char(256),
  "ContractId" integer,
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  declare @Success bit;
  declare @Message char(3000);
  declare @RowId char(256);
  declare @WorkItemLibraryId integer;
  declare @WorkItemId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @WorkItemLibraryReferenceId integer;
  declare @WorkItemReferenceId integer;
  declare @AttachmentId integer;
  declare @ApplicationId integer;
  declare @WorkRequestId integer;
  if "ISDATE"(@ContractAwardDate) = 0 then set @ContractAwardDate = null end if;
  call "PAV"."WorkPackageAddEditSave"(@VesselId,@AvailabilityId,@ContractNumber,@PortEngineerId,@PortEngineerName,@ContractBeginDate,@ContractEndDate,@FundingCodes,@ContractId,null,null,@ContractAwardDate,@ContractorId,@ContractLocationId);
  set @RowId = "PAV"."RowIdEncode"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId);
  select @RowId as "RowId",
    @ContractId as "ContractId",
    1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then set @Message = "ERRORMSG"();
    select '' as "RowId",
      null as "ContractId",
      0 as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end