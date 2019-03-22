create procedure --E-04408 B-19084
--RJM
"_TAE"."WorkItemModifications"( 
  in @VesselId integer default null,
  in @WorkItemId integer,
  in @RowId char(1024) default null ) 
result( 
  "WorkItemModId" integer,
  "WorkItemModNumber" char(10), -- RFP Number
  "WorkItemModTitle" char(128),
  "WorkItemModStatus" char(25),
  "WorkItemModType" char(5),
  "NegotiatedLaborRate" numeric(15,2),
  "NegotiatedLaborDollars" numeric(15,2),
  "NegotiatedOtherDollars" numeric(15,2),
  "NegotiatedLineItemDollars" numeric(15,2),
  "NegotiatedTotalDollars" numeric(15,2),
  "IsAssigned" bit ) 
begin
  /*
2018-12-07 RJM E-04408 B-19084 created
*/
  declare @TransaltId integer;
  set @TransaltId = "SWA"."KeyValuePairParse"(@RowId,'TransaltId');
  if(@VesselId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  if(@WorkItemId is null) then
    set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId')
  end if;
  call "TAE"."WorkItemModifications"(@VesselId,@TransaltId,@WorkItemId)
end