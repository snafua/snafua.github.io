create procedure "_PAV"."AvailabilitiesPOAMTasksComments"( 
  in @RowId long varchar ) 
result( 
  "MilestoneCommentId" integer,
  "UserId" integer,
  "UserFullName" char(128),
  "CommentDate" timestamp,
  "MilestoneComment" long varchar ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  declare @POAMId integer;
  declare @MilestoneId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
  set @POAMId = "SWA"."KeyValuePairParse"(@RowId,'POAMId');
  set @MilestoneId = "SWA"."KeyValuePairParse"(@RowId,'MilestoneId');
  if(@VesselId is not null) and(@AvailabilityId is not null) and(@POAMId is not null) and(@MilestoneId is not null) then
    call "PAV"."AvailabilitiesPOAMTasksComments"(@VesselId,@AvailabilityId,@POAMId,@MilestoneId)
  end if
end