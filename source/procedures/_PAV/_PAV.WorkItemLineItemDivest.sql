create procedure "_PAV"."WorkItemLineItemDivest"( 
  in @LineItemRowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @LineItemNumber integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@LineItemRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@LineItemRowId,'WorkItemId');
  set @LineItemNumber = "SWA"."KeyValuePairParse"(@LineItemRowId,'LineItemNumber');
  call "PAV"."WorkItemLineItemDivest"(@VesselId,@WorkItemId,@LineItemNumber)
end