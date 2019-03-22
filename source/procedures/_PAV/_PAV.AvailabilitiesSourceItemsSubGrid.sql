create procedure "_PAV"."AvailabilitiesSourceItemsSubGrid"( 
  in @RowId char(256),
  in @UnassignedRowIdJSON long varchar default null,
  in @OrderBy char(256) default null,
  in @Module char(25) default 'Availabilities' ) 
result( 
  "RowId" char(256),
  "Number" char(128),
  "Title" char(128),
  "Type" char(25),
  "OrderBy" char(256),
  "CanEdit" bit,
  "CanReassign" bit,
  "VesselId" integer,
  "ReferenceTypeId" integer ) 
begin
  call "PAV"."AvailabilitiesSourceItemsSubGrid"(@RowId,@UnassignedRowIdJSON,@OrderBy,@Module)
end