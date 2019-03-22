create procedure "_PEM"."WorkItemLineItemDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @LineItemNumber integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemLineItemDelete"(@VesselId,@WorkItemId,@LineItemNumber)
end