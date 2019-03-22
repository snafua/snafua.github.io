create procedure "_PAV"."AvailabilityTypeTemplateWorkItems"( 
  in @NodeId char(512),
  in @RowId char(1024),
  in @Module char(56) default 'Availabilities' ) 
result( 
  "RowId" char(256),
  "WorkItemTitle" char(128),
  "SWBS" char(4),
  "IsMandatory" bit,
  "IsSelected" bit,
  "OrderBy" char(256) ) 
begin
  call "PAV"."AvailabilityTypeTemplateWorkItems"(@NodeId,@RowId,@Module)
end