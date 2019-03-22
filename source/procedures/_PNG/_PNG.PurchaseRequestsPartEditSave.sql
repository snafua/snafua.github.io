create procedure "_PNG"."PurchaseRequestsPartEditSave"( 
  in @UnitCost char(25) default null,
  in @Quantity char(25) default null,
  in @PartComment char(1000) default null,
  in @PartRowIds long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PNG"."PurchaseRequestsPartEditSave"(@UnitCost,@Quantity,@PartComment,@PartRowIds)
end