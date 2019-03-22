create procedure "_PAV"."AvailabilitiesPOAMsReportTasks"( 
  in @RowId long varchar,
  in @OrderBy long varchar default 'DueDate ASC' ) 
result( 
  "MilestoneId" integer,
  "Milestone" char(151),
  "NumberOfDays" integer,
  "DueDate" char(10),
  "OrderBy" long varchar,
  "POAMStatus" char(20),
  "DayOfWeek" char(10),
  "RecentNote" char(2048),
  "Overdue" integer,
  "Notes" long varchar ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
  if(@OrderBy is null) then
    set @OrderBy = 'DueDate ASC'
  end if;
  call "PAV"."AvailabilitiesPOAMsReportTasks"(@VesselId,@AvailabilityId,@OrderBy)
end