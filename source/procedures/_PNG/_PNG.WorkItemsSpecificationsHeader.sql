create procedure "_PNG"."WorkItemsSpecificationsHeader"( 
  in @RowId char(1024),
  in @Type char(25) default null,
  in @Module char(56) default null ) 
result( 
  "LineNumber" integer,
  "ColumnLeft" char(128),
  "ColumnCenter" char(128),
  "ColumnRight" char(128) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @WorkItemLibraryId integer;
  declare @AvailabilityId integer;
  declare @ContractId integer;
  declare @UserLibrary bit;
  if @Module = 'Availabilities' then
    call "PAV"."RowIdDecode"(@RowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId)
  else
    set @VesselId = cast("SWA"."RowIdDecode"(@RowId,'VesselId') as integer);
    set @WorkItemId = cast("SWA"."RowIdDecode"(@RowId,'WorkItemId') as integer);
    set @WorkItemLibraryId = cast("SWA"."RowIdDecode"(@RowId,'WorkItemLibraryId') as integer)
  end if;
  set @UserLibrary = 0;
  if @WorkItemLibraryId is not null then
    if "LOCATE"(@Type,'My')+"LOCATE"(@Type,'User') > 0 then set @UserLibrary = 1
    end if end if;
  select "LineNumber",
    "ColumnLeft",
    "ColumnCenter",
    "ColumnRight"
    from "PNG"."WorkItemsSpecificationsHeader"(@VesselId,@WorkItemId,@WorkItemLibraryId,@UserLibrary)
    order by "LineNumber" asc
end