create procedure "_LIT"."TemplateVessels"( 
  in @RowId char(1024) ) 
result( 
  "VesselId" smallint,
  "VesselName" char(56),
  "VesselClass" char(32),
  "ProgramManagerCode" char(32),
  "Filtered" bit ) 
begin
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  call "LIT"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId);
  call "LIT"."TemplateVessels"(@WorkItemLibraryId)
end