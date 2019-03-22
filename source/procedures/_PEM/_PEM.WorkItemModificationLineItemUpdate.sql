create procedure "_PEM"."WorkItemModificationLineItemUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @LineItemNumber integer,
  in @QuantityAllocated integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationLineItemUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@LineItemNumber,@QuantityAllocated)
end