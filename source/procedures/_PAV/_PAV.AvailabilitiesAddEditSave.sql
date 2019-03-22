create procedure "_PAV"."AvailabilitiesAddEditSave"( 
  in @VesselId integer,
  in @AvailabilityType char(15),
  in @AvailabilityBeginDate date,
  in @AvailabilityEndDate date,
  in @AvailabilityId integer default null,
  in @Module char(25) default 'Availabilities',
  in @AttachmentDataJSON long varchar default null,
  in @DeletedAttachmentIds long varchar default null,
  in @POAMId integer default null,
  in @POAMCalendarId integer default null,
  in @POAMCompletionDates long varchar default null ) 
result( 
  "RowId" char(256),
  "AvailabilityId" integer,
  "VesselNodeId" char(256),
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  declare @Success bit;
  declare @Message char(3000);
  declare @RowId char(256);
  declare @WorkItemLibraryId integer;
  declare @ContractId integer;
  declare @WorkItemId integer;
  if(@Module is null) then
    set @Module = 'Availabilities'
  end if;
  call "PAV"."AvailabilitiesAddEditSave"(@VesselId,@AvailabilityType,@AvailabilityBeginDate,@AvailabilityEndDate,@AvailabilityId,@AttachmentDataJSON,@DeletedAttachmentIds,@POAMId,
  @POAMCalendarId,@POAMCompletionDates);
  if(@Module = 'maintenance') then
    set @RowId = "SPM"."RowIdEncode"(@VesselId,@WorkItemLibraryId,@WorkItemId)
  else
    set @RowId = "PAV"."RowIdEncode"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
  end if;
  select @RowId as "RowId",
    @AvailabilityId as "AvailabilityId",
    "PAV"."VesselNodeId"(@VesselId) as "VesselNodeId",
    1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @Message = "ERRORMSG"();
    select '' as "RowId",
      null as "AvailabilityId",
      '' as "VesselNodeId",
      0 as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end