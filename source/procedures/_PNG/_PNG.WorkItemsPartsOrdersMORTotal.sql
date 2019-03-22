create procedure "_PNG"."WorkItemsPartsOrdersMORTotal"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @OrderId integer,
  in @WorkItemEquipmentId integer default null ) 
result( 
  "Total" numeric(15,2) ) 
begin
  call "PNG"."WorkItemsPartsOrdersMORTotal"(@VesselId,@WorkItemId,@OrderId,@WorkItemEquipmentId)
end