create procedure "_PAV"."WorkItemLineItemAssign"( 
  in @WorkItemRowId char(1024),
  in @LineItemRowId char(1024) default null,
  in @Description char(256),
  in @ReferenceNumber char(20),
  in @EstimateBasis char(100),
  in @QuantityRequested integer,
  in @UnitOfMeasure char(50),
  in @UnitPrice numeric(15,2) ) 
result( 
  "LineItemRowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @LineItemNumber integer;
  declare @EstimateBasisId integer;
  set @Description = "LEFT"("ECO"."Base64Decode"(@Description),128);
  set @ReferenceNumber = "LEFT"("ECO"."Base64Decode"(@ReferenceNumber),10);
  set @EstimateBasis = "LEFT"("ECO"."Base64Decode"(@EstimateBasis),50);
  set @UnitOfMeasure = "LEFT"("ECO"."Base64Decode"(@UnitOfMeasure),25);
  set @EstimateBasisId = "PAV"."WorkItemEstimateBasisId"(@EstimateBasis);
  set @VesselId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'WorkItemId');
  set @LineItemNumber = "SWA"."KeyValuePairParse"(@LineItemRowId,'LineItemNumber');
  call "PAV"."WorkItemLineItemAssign"(@VesselId,@WorkItemId,@LineItemNumber,@Description,@ReferenceNumber,
  @EstimateBasisId,@QuantityRequested,@UnitOfMeasure,@UnitPrice)
end