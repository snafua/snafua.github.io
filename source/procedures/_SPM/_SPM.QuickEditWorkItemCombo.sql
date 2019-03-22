create procedure "_SPM"."QuickEditWorkItemCombo"( 
  in @RowIds long varchar,
  in @AvailabilityId integer,
  in @ContractId integer ) 
result( 
  "WorkItemNumber" char(25),
  "WorkItemId" integer ) 
begin
  call "SPM"."QuickEditWorkItemCombo"(@RowIds,@AvailabilityId,@ContractId)
end