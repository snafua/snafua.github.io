create procedure "_PAV"."AvailabilitiesPOAMsTasks"( 
  in @RowId long varchar,
  in @POAMId integer,
  in @POAMCalendarId integer,
  in @OrderBy long varchar default 'DueDate ASC' ) 
result( 
  "RowId" long varchar,
  "Milestone" char(151),
  "DueDate" date,
  "CompletionDate" date,
  "Revised" char(5),
  "HasNotes" bit,
  "CanEditCompletion" bit,
  "CanEditNotes" bit,
  "OrderBy" long varchar ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
  if(@VesselId is null) and(@AvailabilityId is null) then
    call "PAV"."NodeIdDecode"(@RowId,null,null,@VesselId,null,null,null,@AvailabilityId,null)
  end if;
  if(@OrderBy is null) then
    set @OrderBy = 'DueDate ASC'
  end if;
  call "PAV"."AvailabilitiesPOAMsTasks"(@VesselId,@AvailabilityId,@POAMId,@POAMCalendarId,@OrderBy)
end