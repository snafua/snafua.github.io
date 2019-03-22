create procedure "_SPM"."ValidateWorkItemNumber"( 
  in @RowId char(512),
  in @ContractId integer,
  in @WorkItemNumber char(25) ) 
result( 
  "Duplicate" bit ) 
begin
  call "SPM"."ValidateWorkItemNumber"(@RowId,@ContractId,@WorkItemNumber)
end