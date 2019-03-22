create procedure -- B-20413 E-04408
--RJM
"_TAE"."ExecutionWorkItemAdd"( 
  in @RowId char(1024),
  in @WorkItemId integer,
  in @ContractId integer default null,
  in @AvailabilityId integer default null,
  in @IncludeAwardedPrice bit default 1 ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2019-01-07 RJM B-20413 E-04408 add IncludeAwardedPrice
*/
  call "TAE"."ExecutionWorkItemAdd"(@RowId,@WorkItemId,@ContractId,@AvailabilityId,@IncludeAwardedPrice)
end