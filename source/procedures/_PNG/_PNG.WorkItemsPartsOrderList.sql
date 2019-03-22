create procedure "_PNG"."WorkItemsPartsOrderList"( 
  in @RowId char(1024) ) 
result( 
  "PartRowId" char(1024),
  "Required" integer,
  "OnOrder" integer,
  "ThisOrder" integer,
  "PartDescription" char(80),
  "PartNumber" char(40),
  "NavyStockNumber" char(20),
  "UOM" char(10),
  "UnitCost" numeric(15,2) ) 
begin
  call "PNG"."WorkItemsPartsOrderList"(@RowId)
end