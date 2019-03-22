create procedure "_PEM"."WorkItemLineItemInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @LineItemNumber integer,
  in @ReferenceNumber char(10),
  in @LineItemDescription char(128),
  in @UnitOfMeasure char(25),
  in @UnitPrice numeric(15,2),
  in @QuantityRequired integer ) 
result( 
  "LineItemNumber" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemLineItemInsertUpdate"(@VesselId,@WorkItemId,@LineItemNumber,@ReferenceNumber,@LineItemDescription,@UnitOfMeasure,@UnitPrice,@QuantityRequired)
end