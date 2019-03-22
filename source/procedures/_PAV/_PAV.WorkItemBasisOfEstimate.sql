create procedure "_PAV"."WorkItemBasisOfEstimate"( 
  in @LineItemRowId char(1024) default null ) 
result( 
  "EstimateBasisId" integer,
  "EstimateBasis" char(50),
  "IsSelected" bit ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @LineItemNumber integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@LineItemRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@LineItemRowId,'WorkItemId');
  set @LineItemNumber = "SWA"."KeyValuePairParse"(@LineItemRowId,'LineItemNumber');
  call "PAV"."WorkItemBasisOfEstimate"(@VesselId,@WorkItemId,@LineItemNumber)
end