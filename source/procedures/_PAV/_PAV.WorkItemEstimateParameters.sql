create procedure "_PAV"."WorkItemEstimateParameters"( 
  in @WorkItemRowId char(1024) ) 
result( 
  "ParameterRowId" char(1024),
  "LineItemCostParameter" char(50),
  "ParameterDisplayName" char(50),
  "ParameterRequired" bit,
  "ParameterId" integer ) 
begin
  declare @WorkItemCategory char(5);
  declare @VesselId integer;
  declare @WorkItemId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'WorkItemId');
  set @WorkItemCategory = "PAV"."WorkItemCategory"(@VesselId,@WorkItemId);
  call "PAV"."WorkItemEstimateParameters"(@VesselId,@WorkItemId,@WorkItemCategory)
end