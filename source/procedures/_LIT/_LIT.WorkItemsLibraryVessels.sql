create procedure "_LIT"."WorkItemsLibraryVessels"( 
  in @RowId char(1024) ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "IsSelected" bit ) 
begin
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  call "LIT"."WorkItemsLibraryVessels"(@VesselId,@WorkItemLibraryId)
end