create procedure "_PNG"."WorkItemsPartOrder"( 
  in @RowId char(1024) ) 
result( 
  "ShipTo" long varchar,
  "Comments" long varchar,
  "CanOrder" bit,
  "CanEditShippingAddress" bit,
  "CanEditShippingInstructions" bit ) 
begin
  call "PNG"."WorkItemsPartOrder"(@RowId)
end