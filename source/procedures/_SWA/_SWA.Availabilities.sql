create procedure "_SWA"."Availabilities"( 
  in @VesselId integer default null,
  in @RowId char(1024) default null,
  in @NodeId char(1024) default null,
  in @ShowAll bit default null,
  in @Ascending bit default null,
  in @ShowServiceOrder bit default null ) 
result( 
  "Availability" char(128),
  "AvailabilityId" integer ) 
begin
  declare @NodeRowId char(1024);
  if @VesselId is null then
    set @NodeRowId = "ISNULL"(@RowId,@NodeId);
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeRowId,'VesselId')
  end if;
  if @VesselId is not null then
    call "SWA"."Availabilities"(@VesselId,@ShowAll,@Ascending,@ShowServiceOrder)
  end if
end