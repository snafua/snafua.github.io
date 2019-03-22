create procedure "_PNG"."PurchaseRequests"( 
  in @RowId char(1024),
  in @AddPurchaseRequest bit default 0 ) 
result( 
  "PurchaseRequest" char(50),
  "PurchaseRequestRowId" char(256),
  "IsSelected" bit,
  "PurchaseRequestStatus" char(15),
  "CanAddOrder" bit,
  "CanEditOrder" bit ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  if @AddPurchaseRequest is null then set @AddPurchaseRequest = 0 end if;
  call "PNG"."PurchaseRequests"(@VesselId,@WorkItemId,@AddPurchaseRequest)
end