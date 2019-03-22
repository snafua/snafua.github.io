create procedure "_PAV"."WorkItemEstimateParameterValues"( 
  in @WorkItemRowId char(1024),
  in @LineItemRowId char(1024) ) 
result( 
  "ParameterRowId" char(1024),
  "LineItemCostParameter" char(50),
  "ParameterDisplayName" char(50),
  "ParameterValue" numeric(15,2),
  "ParameterId" integer ) 
begin
  declare @WorkItemCategory char(5);
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @LineItemNumber integer;
  declare @CostType char(15);
  declare @ParameterId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'WorkItemId');
  set @LineItemNumber = "SWA"."KeyValuePairParse"(@LineItemRowId,'LineItemNumber');
  set @CostType = "SWA"."KeyValuePairParse"(@LineItemRowId,'CostType');
  set @ParameterId = "SWA"."KeyValuePairParse"(@LineItemRowId,'ParameterId');
  if @CostType is null then
    set @CostType = 'Estimated'
  end if;
  call "PAV"."WorkItemEstimateParameterValues"(@VesselId,@WorkItemId,@LineItemNumber,@CostType)
end