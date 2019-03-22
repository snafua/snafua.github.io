create procedure "_TAE"."DefaultWorkItem"( 
  in @RowId char(1024),
  in @ContractId integer ) 
result( 
  "WorkItemNumber" char(25) ) 
begin
  call "TAE"."DefaultWorkItem"(@RowId,@ContractId)
end