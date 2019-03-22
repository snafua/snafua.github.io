create procedure "_PNG"."PurchaseRequestLocations"( 
  in @RowId char(1024) ) 
result( 
  "ShipToLocation" char(128),
  "ShipToLocationId" integer,
  "IsSelected" bit ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestLocations"(@VesselId,@WorkItemId,@PurchaseRequestId)
end