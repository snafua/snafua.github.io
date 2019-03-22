create procedure "_PNG"."WorkItemsPartsOrderSave"( 
  in @RowId long varchar,
  in @ShippingAddress long varchar default '',
  in @ShippingInstructions long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  if @ShippingAddress is null then set @ShippingAddress = '' end if;
  call "PNG"."WorkItemsPartsOrderSave"(@RowId,@ShippingAddress,@ShippingInstructions)
end