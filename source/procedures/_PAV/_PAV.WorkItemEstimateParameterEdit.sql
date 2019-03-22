create procedure "_PAV"."WorkItemEstimateParameterEdit"( 
  in @WorkItemRowId char(1024),
  in @Parameter char(100) default null,
  in @EstimateBasis char(100),
  in @QuantityRequested integer default null,
  in @UnitOfMeasure char(100) default null,
  in @UnitPrice numeric(15,2) default null,
  in @ParameterValue char(25) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'WorkItemId');
  call "PAV"."WorkItemEstimateParameterEdit"(@VesselId,@WorkItemId,@Parameter,@EstimateBasis,@QuantityRequested,@UnitOfMeasure,@UnitPrice,@ParameterValue)
end