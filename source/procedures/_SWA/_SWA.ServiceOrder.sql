create procedure --D-04196
--RJM
"_SWA"."ServiceOrder"( 
  in @RowId char(1024) default null,
  in @VesselId integer default null,
  in @ContractId integer default null ) 
result( 
  "RowId" char(1024),
  "WorkItemTitle" char(128),
  "ContractNumber" char(25),
  "WorkItemEstimatedCost" numeric(15,2),
  "WorkItemAwardedCost" numeric(15,2),
  "WorkItemActualCost" numeric(15,2) ) 
begin
  /*
2018-11-29 RJM Fixed incorrect input params
*/
  if("ECO"."CheckNull"(@VesselId) is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  if("ECO"."CheckNull"(@ContractId) is null) then
    set @ContractId = "SWA"."KeyValuePairParse"(@RowId,'ContractId')
  end if;
  call "SWA"."ServiceOrder"(@VesselId,@ContractId)
end