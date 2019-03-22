create procedure --E-04408 B-19084
--RJM
"_TAE"."WorkItemModificationSpecification"( 
  in @VesselId integer default null,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @RowId char(1024) default null ) 
result( 
  "SpecificationRowId" char(1024),
  "Specification" long varchar ) 
begin
  /*
2018-12-05 RJM E-04408 B-19084 created
*/
  if(@VesselId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  if(@WorkItemId is null) then
    set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId')
  end if;
  if(@WorkItemModId is null) then
    set @WorkItemModId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemModId')
  end if;
  call "TAE"."WorkItemModificationSpecification"(@VesselId,@WorkItemId,@WorkItemModId)
end