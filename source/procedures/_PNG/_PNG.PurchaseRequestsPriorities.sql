create procedure "_PNG"."PurchaseRequestsPriorities"( 
  in @RowId char(256) default null ) 
result( 
  "PurchaseRequestPriority" integer,
  "IsSelected" bit ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @PurchaseRequestPriority integer;
  if @RowId is not null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
    set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
    select "PurchaseRequestPriority"
      into @PurchaseRequestPriority from "PNG"."ViewPurchaseRequestsDetails"
      where "VesselId" = @VesselId
      and "WorkItemId" = @WorkItemId
      and "PurchaseRequestId" = @PurchaseRequestId
  end if;
  if @PurchaseRequestPriority is null then set @PurchaseRequestPriority = 5 end if;
  call "PNG"."PurchaseRequestsPriorities"(@PurchaseRequestPriority)
end