create procedure "_SPM"."QuickEditSave"( 
  in @RowIds long varchar,
  in @AvailabilityId integer,
  in @ContractId integer,
  in @WorkItemNumber char(25) default null,
  in @LinkedPMRowIds long varchar default null,
  in @WorkItemId integer default null,
  in @Overwrite bit default null ) 
result( 
  "RowId" char(512),
  "Success" bit,
  "ErrorMessage" long varchar,
  "SQLError" long varchar ) 
begin
  call "SPM"."QuickEditSave"(@RowIds,@AvailabilityId,@ContractId,@WorkItemNumber,@LinkedPMRowIds,@WorkItemId,@Overwrite)
end