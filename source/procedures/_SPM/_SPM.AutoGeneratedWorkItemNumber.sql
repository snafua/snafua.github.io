create procedure "_SPM"."AutoGeneratedWorkItemNumber"( 
  in @RowId char(512),
  in @ContractId integer ) 
result( 
  "WorkItemNumber" char(25) ) 
begin
  call "SPM"."AutoGeneratedWorkItemNumber"(@RowId,@ContractId)
end