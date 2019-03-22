create procedure "_PNG"."WorkItemsPartsOrdersMORSources"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @OrderId integer,
  in @WorkItemEquipmentId integer default null ) 
result( 
  "NavyStockNumber" char(20),
  "SupplierReference" long varchar ) 
begin
  call "PNG"."WorkItemsPartsOrdersMORSources"(@VesselId,@WorkItemId,@OrderId,@WorkItemEquipmentId)
end