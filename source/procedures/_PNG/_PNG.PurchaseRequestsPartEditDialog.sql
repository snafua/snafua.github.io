create procedure "_PNG"."PurchaseRequestsPartEditDialog"( 
  in @PartRowIds long varchar ) 
result( 
  "PartRowId" long varchar,
  "UnitCost" char(25),
  "Quantity" char(25),
  "PartComment" char(1000) ) 
begin
  call "PNG"."PurchaseRequestsPartEditDialog"(@PartRowIds)
end