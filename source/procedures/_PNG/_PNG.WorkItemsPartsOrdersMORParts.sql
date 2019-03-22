create procedure "_PNG"."WorkItemsPartsOrdersMORParts"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @OrderId integer,
  in @WorkItemEquipmentId integer default null ) 
result( 
  "ReqnNo" char(15),
  "PartNo" char(40),
  "COG" char(15),
  "StockNo" char(20),
  "PartDescription" char(80),
  "UI" char(10),
  "Qty" integer,
  "UnitPrice" numeric(15,2),
  "Amount" numeric(15,2) ) 
begin
  call "PNG"."WorkItemsPartsOrdersMORParts"(@VesselId,@WorkItemId,@OrderId,@WorkItemEquipmentId)
end