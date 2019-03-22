create procedure "_PAV"."WorkItemsCostPermissions"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "CanEditAwardDate" bit,
  "CanEditContractor" bit,
  "CanEditAwardedCost" bit,
  "CanEditRFPCost" bit,
  "CanAddRFPDetails" bit,
  "CanAddContractor" bit ) 
begin
  call "PAV"."WorkItemsCostPermissions"(@NodeId,@RowId,@ApplicationId)
end