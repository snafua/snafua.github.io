create procedure "_PAV"."AvailabilitiesPOAMsTasksRevisions"( 
  in @RowId long varchar,
  in @RevisionType char(25),
  in @OrderBy long varchar default 'RevisionDate DESC' ) 
result( 
  "RevisionNumber" integer,
  "CompletionDate" timestamp,
  "RevisedByUserId" integer,
  "RevisedByUserFullName" char(128),
  "RevisionDate" timestamp,
  "OrderBy" long varchar ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  declare @POAMId integer;
  declare @MilestoneId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
  set @POAMId = "SWA"."KeyValuePairParse"(@RowId,'POAMId');
  set @MilestoneId = "SWA"."KeyValuePairParse"(@RowId,'MilestoneId');
  if(@OrderBy is null) then
    set @OrderBy = 'RevisionDate DESC'
  end if;
  if(@VesselId is not null) and(@AvailabilityId is not null) and(@POAMId is not null) and(@MilestoneId is not null) then
    if(@RevisionType = 'Completion') then
      call "PAV"."AvailabilitiesPOAMsTasksCompletionRevisions"(@VesselId,@AvailabilityId,@POAMId,@MilestoneId,@OrderBy)
    else
      call "PAV"."AvailabilitiesPOAMsTasksScheduleRevisions"(@VesselId,@AvailabilityId,@POAMId,@MilestoneId,@OrderBy)
    end if
  end if
end