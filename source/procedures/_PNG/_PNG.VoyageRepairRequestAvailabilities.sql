create procedure --E-03138
--RJM
"_PNG"."VoyageRepairRequestAvailabilities"( 
  in @VesselId integer default null,
  in @AvailabilityId integer default null,
  in @RowId char(1024) default null ) 
result( 
  "AvailabilityId" integer,
  "AvailabilityText" char(20) ) 
begin
  if @VesselId is null then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  if @AvailabilityId is null then
    set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId')
  end if;
  call "PNG"."VoyageRepairRequestAvailabilities"(@VesselId,@AvailabilityId)
end